
# Vigilante

A simple monitoring service, intended to replace things like Nagios.

## Build

Build in the normal way on Mac/Linux:

~~~
go build -o vigil-go cmd/web/*.go
~~~

Or for a particular platform:

~~~
env GOOS=linux GOARCH=amd64 go build -o vigil-go cmd/web/*.go
~~~

## Requirements

Vigilante requires:
- Postgres 16 or later (db is set up as a repository, so other databases are possible)
- An account with [Pusher](https://pusher.com/), or a Pusher alternative
(like [ipê](https://github.com/dimiro1/ipe))

## Run

First, make sure ipê is running (if you're using ipê):

On Mac/Linux
~~~
cd ipe
./ipe
~~~

Run with flags:

~~~
./vigil-go \
-dbuser='postgres' \
-pusherHost='localhost' \
-pusherPort='4001' \
-pusherKey='123abc' \
-pusherSecret='abc123' \
-pusherApp="1" \
-pusherSecure=false
~~~~

## All Flags

~~~~
Usage of ./vigilante:
  -db string
        database name (default "vigil-go")
  -dbhost string
        database host (default "localhost")
  -dbport string
        database port (default "5433")
  -dbssl string
        database ssl setting (default "disable")
  -dbuser string
        database user
  -domain string
        domain name (e.g. example.com) (default "localhost")
  -identifier string
        unique identifier (default "vigil-go")
  -port string
        port to listen on (default ":4000")
  -production
        application is in production
  -pusherApp string
        pusher app id (default "9")
  -pusherHost string
        pusher host
  -pusherKey string
        pusher key
  -pusherPort string
        pusher port (default "443")
  -pusherSecret string
        pusher secret
   -pusherSecure
        pusher server uses SSL (true or false)
~~~~
