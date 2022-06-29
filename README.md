# LTACH19032 project distribution

This repository contains references to all developed artefacts within the project [Ontology engineering utilization in reliability and quality knowledge management systems in the aviation](https://starfos.tacr.cz/en/project/LTACH19032?query_code=5yiyaackalka) including reference to live demo and video demonstrations of the developed system. The project was focused on development of a knowledge management system in air transport with utilization of ontology engineering in the domain. The goal of the project was application of quality and reliability conceptual modeling to represent knowledge and correlations in quality and reliability data.

## Main software artefacts of the distribution

Within the project four standalone software artefacts were developed:
- [NLP-releated tools](https://github.com/kbss-cvut/gate-tools) - Command-line tool of NLP-related utilities centered mainly around [GATE](https://gate.ac.uk/) framework. 
- [Ontology-based annotation tool](./annotator) - The web-based tool is ontology-based extension of [BRAT annotation tool](https://brat.nlplab.org/). It uses _NLP-related tools_ to transform annotated text between _BRAT_ and _GATE_ format and run NLP pipelines to annotate text.
- [Web-based tool for reliability analysis](https://github.com/kbss-cvut/fta-fmea-ui) - It is web-based application to support analysis of hardware systems by means of Fault-tree Analysis (FTA) and Failure Modes and Effects Analysis (FMEA). The tool consist of Java-based [backend](https://github.com/kbss-cvut/fta-fmea-ui) and  [frontend](https://github.com/kbss-cvut/fta-fmea-ui) written in Javascript framework React.
- [Reliability model](https://github.com/kbss-cvut/reliability-model) - The repository of Semantic Web ontologies mainly based on [Unified Foundational Ontology (UFO)]( https://nemo.inf.ufes.br/en/projetos/ufo/). The ontologies are used in all mentioned artefacts above to provide model of its data and knowledge. 


## Demo

To demonstrate the functionality of developed software artefacts described above the demo application was developed. It is a web application consisting of two integrated tools -- 1) _Annotator tool_ is used to annotate documents (e.g. an airplain flight manual), which can be then imported to the _FTA-FMEA tool_ and used for reliability analysis of hardware systems. User manuals of both of the tools are available within referenced artefacts above.

### Live demo

[Live demo](https://kbss.felk.cvut.cz/19msmt-demo/) in addition to mentioned web components contains video demonstrations of the developed demo. 

### Dockerization

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
