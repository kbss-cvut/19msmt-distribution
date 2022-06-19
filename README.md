# MSMT distribution demo

[Live version](https://kbss.felk.cvut.cz/19msmt-demo/) of this demo.

## Dockerization

1. Download [GraphDB](https://graphdb.ontotext.com/) standalone server ZIP archive and place it into the `db-server` folder.
2. Set `GRAPHDB_ZIP` variable in `.env` file to point to the downloaded zip file.
3. Run `docker-compose up -d` to start the application.
