# teamspeak3
Teamspeak3 easy docker setup

**Requirements**:

1. VPS(Virtual Private Server) having docker and docker-compose installed
2. Direct SSH access to VPS (Make sure SSH keys are present in the ~/.ssh folder)
3. VPS running on Linux (Ubuntu Preferred)

**Running TS3**
1. Clone the project..
2. Navigate to the directory and type => bash deploy.sh "username" "IP Address of the VM"
  EG: bash deploy_ts3.sh root 139.162.xx.xxx
3. The TS3 server has been deployed. 
4. Now type bash get_key.sh <username> <IP Address of the VM> to get the ADMIN token of the ts3 server
5. Open up your client ts3 application and connect to the ipaddress of the VPS. Enter the obtained token when prompted and VOILA!!!





