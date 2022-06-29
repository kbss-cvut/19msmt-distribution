# LTACH19032 project distribution

This repository contains references to all developed artefacts within the project [Ontology engineering utilization in reliability and quality knowledge management systems in the aviation](https://starfos.tacr.cz/en/project/LTACH19032?query_code=5yiyaackalka) including reference to live demo and video demonstrations of the developed system. The project was focused on development of a knowledge management system in air transport with utilization of ontology engineering in the domain. The goal of the project was application of quality and reliability conceptual modeling to represent knowledge and correlations in quality and reliability data.

## System modules

The developed system contains 4 modules:
- [Reliability model](https://github.com/kbss-cvut/reliability-model) - Semantic Web ontologies mainly based on [Unified Foundational Ontology (UFO)]( https://nemo.inf.ufes.br/en/projetos/ufo/)
- [NLP-releated tools](https://github.com/kbss-cvut/gate-tools) 
- [Ontology-based annotation tool](./annotator)
- [Web-based tool for reliability analysis](https://github.com/kbss-cvut/fta-fmea-ui) - it supports analysis of hardware systems by means of Fault-tree Analysis (FTA) and Failure Modes and Effects Analysis (FMEA). The tool consist of Java-based [backend](https://github.com/kbss-cvut/fta-fmea-ui) and  [frontend](https://github.com/kbss-cvut/fta-fmea-ui) written in Javascript framework React.


## Live demo

[Live demo](https://kbss.felk.cvut.cz/19msmt-demo/) consist of two integrated web applications. The Annotator tool is used to annotate documents (e.g. an airplain flight manual), which can be then imported to the tool used for reliability analysis of hardware systems by means of Fault-tree Analysis (FTA) and Failure Modes and Effects Analysis (FMEA).

## Dockerization

1. Download [GraphDB](https://graphdb.ontotext.com/) standalone server ZIP archive and place it into the `db-server` folder.
2. Set `GRAPHDB_ZIP` variable in `.env` file to point to the downloaded zip file.
3. Run `docker-compose up -d` to start the application.

-----
This repository was created within the project [LTACH19032](https://starfos.tacr.cz/en/project/LTACH19032).
<p align="center">
    <img src="https://seeklogo.com/images/M/msmt-logo-84BD22A97D-seeklogo.com.png"/>
</p>

<p align="center">
    <img src="https://www.msmt.cz/uploads/Odbor%2033/inter-excellence-color.jpg"/>
</p>
