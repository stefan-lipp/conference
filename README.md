# Conference
Conference tool project for the web database lecture.

## Motivation
The tool is intended for use at [VLDB 2017](http://www.vldb.org/2017/) and potentially other conferences.

## Programs that need to be installed
- [Docker](http://www.docker.com)
- [node.js](https://nodejs.org/)

## Setup
- Install nodejs and Docker (incl. creating a docker-machine)
- Create database in `postgres-db` by executing `deployment/Database.sql`. The postgres instance is accessible under port `54321`.
- Create a user for the `postgres-db` database create by executing `deployment/User.sql`. _Note:_ Replace username and password.
- _Optional:_ Load data, if available, into the database.

## Startup
Use `docker-compose up` to start the docker containers. Includes:
- node (API server)
- nginx (static file server and reverse proxy)
- postgres (database)

__Note:__ The nginx mounts and serves the `/webapp/dist` directory. It is therefore required to build the webapp into it beforehand.
Use `npm install` to install dependencies and `npm run build:dev` or `npm run watch:dev` in the `/webapp` directory to build. `watch:dev` rebuilds the Webapp on file-change.
You may also install the backends dependencies by running `npm install` in the `/backend` directory.


## Tech-Stack
- [Docker](http://www.docker.com)
- [node.js](https://nodejs.org/)

### Frontend
- [TypeScript](https://www.typescriptlang.org)
- [Angular2](https://angular.io)
- [nginx](http://nginx.org)

### Backend API
- [node-jsonwebtoken](https://github.com/auth0/node-jsonwebtoken) for authentication and authorization.
- [Sswagger UI](http://swagger.io/) for API endpoint documentation.


### Frontend
The nginx container serves the files in `/webapp/dist`.
Build the frontend with the following commands (from `/webapp` dir)
- `npm install` installs dependencies
- `npm run build:dev` to build or `npm run watch:dev` to build and watch (re-build on file change)
- Run unit tests: `npm test` (Coverage reports are found in `/coverage`)
- Run end to end tests: `npm run e2e`

### API server
The node container mounts the `/backend` directory.

_Note:_ The backend server runs on port `3000` within the docker environemnt as configures in the `docker-compose.yml`.
The frontend nginx acts as a reverse proxy and redirects requests made to the `/api` or `/doc` route to this container.

_Note:_ The backend expects to find a `dbconfig.json` in `/backend`. See `/backend/dbconfig.json.template` for the format.

### Database
The `postgres-db` container exposes the database on port `5432` within the docker environment and on port `54321` to the host system.
This port was chosen to avoid conflicts with additional local postgres instances.
You can set a password for the default postgres user `postgres` with the `POSTGRES_PASSWORD` environemnt variable of the `postgres-db` container. See [the containers documentation](https://hub.docker.com/_/postgres/)


## Code-Style

### Language
- All Code (Variables, Constants, Classes etc.) is in English
- All Comments are in English

### Source Code
- Everything (Source, Config, Docs...) is UTF-8, no exceptions
- No Tabstops in Source Files, only Spaces are acceptable
- __JavaScript__ and __TypeScript__ use __2__-space indent
- __CSS__ and __SASS__ use __4__-space indent
- We highly recommend installing a linter ([eslint](https://github.com/eslint/eslint), [tslint](https://github.com/palantir/tslint)). A linter-config file is provided.
