#!/bin/bash
    #create basique image :projet-linux + container crown-container .
docker build -t projet-linux .
docker run -it -p 8080:80 --name crown-container -d projet-linux 
docker exec -it crown-container /bin/bash
