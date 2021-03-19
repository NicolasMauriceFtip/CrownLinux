# CrownLinux
Student linux project for bash scripting

# User runable is from "Livrable" branch

1st cmd :
cmd: docker build -t CrownLinux .
cmd: docker run -it -p 8080:80 --name CrownContainer CrownLinux

2nd cmd :
cmd: docker exec -it CrownContainer /bin/bash
