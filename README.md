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

## Transfering Savegames

In case you already have a savegame you wish to continue on the dedicated server: 
- copy over the `Save_*.sav` and `*_Foliage.sav` files to `gamefiles/HumanitZServer/Saved/SaveGames/SaveList/Default`.
- adjust the `SaveName` setting to match your `.sav` file (e.g. `mygame` in case of `Save_mygame.sav`)
- restart the server

## Settings

The main settings file can be found in `gamefiles/HumanitZServer/GameServerSettings.ini`.

TODO: add list or link to available setting values

## Credits
Dockerfile and entrypoint.sh structure modified from [Pleut's Abiotic Factor server container](https://github.com/Pleut/abiotic-factor-linux-docker)
