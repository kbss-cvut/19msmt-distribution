# Annotator

Annotator is ontology enhanced tool for annotating text. It is extension of [Brat Rapid Annotation Tool](https://brat.nlplab.org/) (Brat) -- an online environment for collaborative text annotation. 

## Installation Requirements
	
- [Docker](https://docs.docker.com/install/) installed on the system 
- Operating systems: Linux, MacOS or Windows
- System requirements: minimum 8GB of memory

Brat login requires username, password and admin email to be mentioned by the user. These arguements can be specified in environment variables, see usage in `./docker-compose.yml`.

## Third-party artefacts

### BRAT Rapid Annotation Tool Distribution

Due to frequent outage of the distribution download site `http://weaver.nlplab.org/~brat/releases/brat-v1.3_Crunchy_Frog.tar.gz` 
we downloaded the artefact into `./config/brat-v1.3_Crunchy_Frog.tar.gz`.
