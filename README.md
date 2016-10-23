# raspbpython
Ubuntu based Python project dockerfile for raspberrypi.  This docker file was created to allow running OpenBazaar on a docker server hosted on a raspberrypi.  


## OpenBazaar server startup command
Assuming the host has a folder /home/pi/OpenBazaar-Server with the openbazaar server files from github and that the  .openbazaar folder will be shared with the host.  This can be used as a convient way to transfer an existing store to the server.  Just copy the local copy of .openbazaar to the host server (/home/pi/.openbazaar) and when docker starts up it will use the volume to initiate with the existing store contents. 

'''

docker run -it -v /home/pi/OpenBazaar-Server/:/srv -v /home/pi/.openbazaar:/root/.openbazaar -p 18466-18470:18466-18470/tcp -p 18467:18467/udp raspbpython /bin/bash  -c 'cd /srv; python openbazaard.py start -a 0.0.0.0'

'''


