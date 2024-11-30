#!/bin/bash

# inizializza il db delle connessioni 
echo Starting connessioni db in docker container

docker run  --name connessioni -p 5433:5432 -e POSTGRES_PASSWORD=postgres -d postgres
# connessioni con artisti 

curl -X POST "http://localhost:8080/connessioni/connessioni" -H "accept: */*" -H "Content-Type: application/json" \
     -d "{ \"utente\": \"Alice\", \"seguito\": \"Pink Floyd\", \"ruolo\": \"ARTISTA\"}"
echo 

curl -X POST "http://localhost:8080/connessioni/connessioni" -H "accept: */*" -H "Content-Type: application/json" \
     -d "{ \"utente\": \"Alice\", \"seguito\": \"The Beatles\", \"ruolo\": \"ARTISTA\"}"
echo 

curl -X POST "http://localhost:8080/connessioni/connessioni" -H "accept: */*" -H "Content-Type: application/json" \
     -d "{ \"utente\": \"Bob\", \"seguito\": \"The Beatles\", \"ruolo\": \"ARTISTA\"}"
echo 

curl -X POST "http://localhost:8080/connessioni/connessioni" -H "accept: */*" -H "Content-Type: application/json" \
     -d "{ \"utente\": \"Bob\", \"seguito\": \"Michael Jackson\", \"ruolo\": \"ARTISTA\"}"
echo 

# connessioni con recensori 

curl -X POST "http://localhost:8080/connessioni/connessioni" -H "accept: */*" -H "Content-Type: application/json" \
     -d "{ \"utente\": \"Bob\", \"seguito\": \"Woody\", \"ruolo\": \"RECENSORE\"}"
echo 

curl -X POST "http://localhost:8080/connessioni/connessioni" -H "accept: */*" -H "Content-Type: application/json" \
     -d "{ \"utente\": \"Carlo\", \"seguito\": \"OndaRock\", \"ruolo\": \"RECENSORE\"}"
echo 