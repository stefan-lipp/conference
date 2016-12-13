# Conference
Conference tool project for the web database lecture.

## Motivation
The tool could actually be used for [VLDB 2017](http://www.vldb.org/2017/) or other conferences.

## Programs that need to be installed
- [Docker](http://www.docker.com)
- [node.js](https://nodejs.org/)

## Initial-Setup
- Create docker deault machine
- Create database inside docker container `postgres-db`, see `deployment/database.sql`
- Create your user for database inside container `postgres-db`, see `deployment/user.sql`
- optional: Load data into the database
- Setup

## Setup
Use `docker-compose up` to start the docker containers. Includes:
- node (API backend)
- nginx (static file server)
- you need to run and build the angular webapp (```cd backend && npm i && npm run build:dev```)


## Tech-Stack
- [Docker](http://www.docker.com)
- [nginx](http://nginx.org)

### Frontend
- [node.js](https://nodejs.org/)
- [TypeScript](https://www.typescriptlang.org)
- [Angular2](https://angular.io)

### Backend API
- [node.js](https://nodejs.org/)
- [node-jsonwebtoken](https://github.com/auth0/node-jsonwebtoken)
- [swagger](http://swagger.io/)




### Frontend
The nginx container serves the files in `webapp/dist`.
Build the frontend with the following commands (from `frontend/webapp` dir)
- `npm install` installs dependencies
- `npm run build:dev` to build or `npm run watch:dev` to build and watch (re-build on file change)
- Run unit tests: `npm test` (Coverage reports are found in `/coverage`)
- Run end to end tests: `npm run e2e`

### Backend API
The node container mounts the `backend/server` directory.
Use `docker restart node_backend` to restart the server.

_Note:_ The backend server runs on port `3000` as configures in the `docker-compose.yml`.
The frontend nginx redirects requests made to the `/api` route to this container.

_Note:_ The backend expects to find a `dbconfig.json` in `/backend`. See `/backend/dbconfig.json.template` for the format.


## Code-Style

### Language
- All Code (Variables, Constants, Classes etc.) is in English
- All Comments are in English

### Source Code
- Everything (Source, Config, Docs...) is UTF-8, no exceptions
- No Tabstops in Source Files, only Spaces are acceptable
- __JavaScript__ and __TypeScript__ use __2__-space indent
- __CSS__ and __SASS__ use __4__-space indent