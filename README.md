# WhiteWasp
- David Kolesar, Jan '22

This is a bash script for Linux (Ubuntu distro) that automatically connects to a random node on NordVPN upon computer login. 
I am not liable for what you do with this script. That includes (but is not limited to) criminal behavior or damages. 

It's offered as is.   

Don't be an idiot. 


# How to use this script:

**0. Modify the existing service file in this repository *-or-* create a service file that will call the script. Your service file should look as follows:**

```[Unit]
Description=Automatically connect to randon NordVPN node on startup.

[Service]
Type=simple
ExecStart=/bin/bash /home/[username]/[pathToScript]/autoVPNConnect.sh

[Install]
WantedBy=multi-user.target  
```
**1. Save/Move the service file in:** 
```/etc/systemd/system/```

**2. Make your .service file executable by opening a terminal in the */etc/systemd/system/* directory and executing the following:**
```
     chmod u+x /[pathToScript]/autoVPNConnect.sh
```
**3. Execute the script within the same terminal by calling:**
```
     sudo systemctl start autoConnect.service
```
**4. Make it run on boot:**
```
     sudo systemctl enable autoConnect.service
```

Upon reboot, you should automatically connect to a random country. 
