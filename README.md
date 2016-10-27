# raspbpython
Ubuntu based Python project dockerfile for raspberrypi.  This docker file was created to allow running OpenBazaar on a docker server hosted on a raspberrypi.  


## OpenBazaar server startup command

Assumes the host has a folder /home/pi/OpenBazaar-Server with the openbazaar server files from [github openbazaar-server](https://github.com/OpenBazaar/OpenBazaar-Server) and that the  home/pi/.openbazaar folder will be shared with the host.  This can be used as a convient way to transfer an existing store to the server.  Just copy your desktop version of the .openbazaar folder to the host server's (/home/pi/.openbazaar). Now, when docker starts up we use the -v (volume) to point docker's /root/.openbazaar folder to the host's. 

### BUILD
* Copy the Dockerfile to the directory which has your (python) application's  requirements.txt
* Perform the build which will also install the requirements into the docker image

```
  docker build -t MyTaggedImageName .
```

### RUN

```

docker run -it -v /home/pi/OpenBazaar-Server/:/srv -v /home/pi/.openbazaar:/root/.openbazaar -p 18466-18470:18466-18470/tcp -p 18467:18467/udp raspbpython /bin/bash  -c 'cd /srv; python openbazaard.py start -a 0.0.0.0'

```


