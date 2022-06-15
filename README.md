# MSMT distribution demo


# Third-party artefacts

## BRAT Rapid Annotation Tool Distribution

Due to frequent outage of the distribution download site `http://weaver.nlplab.org/~brat/releases/brat-v1.3_Crunchy_Frog.tar.gz` 
we downloaded the artefact into `./annotator/brat-v1.3_Crunchy_Frog.tar.gz`.


## Dockerization

1. Download [GraphDB](https://graphdb.ontotext.com/) standalone server ZIP archive and place it into the `db-server` folder.
2. Set `GRAPHDB_ZIP` variable in `.env` file to point to the downloaded zip file.
3. Run `docker-compose up -d` to start the application.
