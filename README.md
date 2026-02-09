# humanitz-server-docker
Dockerized Server for Humanitz

## Installation

- checkout repository
- `cp docker-compose.yml.example docker-compose.yml`
- edit variables in `docker-compose.yml`
  - set `ServerName` to the name the server should appear in server list
  - set `ServerPassword` to your password (default is "password")
  - adjust `MaxServerPlayers` as needed (default is 8)
- run the server with `docker compose up -d`

## Update

You can uncomment the `AutoUpdate` env variable in the composefile so the container updates on every restart.  

Or delete the `gamefiles` folder and restart the container.

## Credits
Dockerfile and entrypoint.sh structure modified from [Pleut's Abiotic Factor server container](https://github.com/Pleut/abiotic-factor-linux-docker)
