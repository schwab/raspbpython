# raspbpython
Ubuntu based Python project dockerfile for raspberrypi


## Run OpenBazaar server
This assumes the host has a folder /home/pi/OpenBazaar-Server with the openbazaar server files from github.  It also assumes the .openbazaar folder will be shared with the host.  This can be used as a convient way to transfer an existing store to the server.  Just copy any existing local copy of .openbazaar to the host server.  The -v /home/pi/.openbazaar command will then ensure the docker instance starts with the same store contents. 

docker run -it -v /home/pi/OpenBazaar-Server/:/srv -v /home/pi/.openbazaar:/root/.openbazaar -p 18466-18470:18466-18470/tcp -p 18467:18467/udp raspbpython /bin/bash  -c 'cd /srv; python openbazaard.py start -a 0.0.0.0'

