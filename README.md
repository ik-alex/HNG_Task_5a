# DevOpsFetch Tool
---

This tool is designed to be very instrumental to devops engineers. It helps the Devops engineer retrive vital infomation about a linux server quickly. The information been retrived from a server with this tool includes; 
- details about an active port
- listing all docker images and container
- Nginx server configurations
- list of users logins
- actives of users on the server within some specific time ranges

# How To Install And Run DevOpsFetch Tool on your server
---

1. Clone this repository:
```sh
git clone https://github.com/ik-alex/HNG_Task_5a.git
```

2. Make the DevOpsFetch tool executable and run as a root user
```sh
sudo su
chmod +x ./devopsfetch
```

3. View help functions
```sh
./devopsfetch -h
```

4. Display all active ports:
```sh
./devopsfetch -p
```

5. Provide specific information about a specific port
```sh
./devopsfetch -p <port number>
```

6. List all docker images and conatiner
```sh
./devopsfetch -d
```

7. Provide specific information about a specific container
```sh
./devopsfetch -d <container name>
```

8. Display all Nginx domains and their ports
```sh
./devopsfetch -n
```

9. Provide detailed configuration information for a specific domain
```sh
./devopsfetch -n <domain>
```

10. List all users and their last login times
```sh
./devopsfetch -u
```

11. Provide detailed information about a specific user
```sh
./devopsfetch -u <username>
```

12. Display activities within a specified time range
```sh
./devopsfetch -t '10 hour ago'
```

# Script to install dependencies
---

```sh
chmod +x ./install_service
./install_service
```

Run `./install_service` and set it execution mode to perform the following services

1. Update system package
2. Install dependecies such as
   - nginx
   - docker
3. Copy the main script to /usr/local/bin
4. setup systemd service (/etc/systemd/system/devopsfetch.service)
5. Enable and start systemd service
6. sets up rotation for devopsfetch logs to manage log files.































