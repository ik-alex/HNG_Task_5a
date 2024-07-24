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
chmod +x ./devopsfetch.sh
```

3. View help functions
```sh
./devopsfetch.sh -h
```

4. Display all active ports:
```sh
./devopsfetch.sh -p
```

5. Provide specific information about a specific port
```sh
./devopsfetch.sh -p <port number>
```

6. List all docker images and conatiner
```sh
./devopsfetch.sh -d
```

7. Provide specific information about a specific container
```sh
./devopsfetch.sh -d <container name>
```

8. Display all Nginx domains and their ports
```sh
./devopsfetch.sh -n
```

9. Provide detailed configuration information for a specific domain
```sh
./devopsfetch.sh -n <domain>
```

10. List all users and their last login times
```sh
./devopsfetch.sh -u
```

11. Provide detailed information about a specific user
```sh
./devopsfetch.sh -u <username>
```

12. Display activities within a specified time range
```sh
./devopsfetch.sh -t '10 hour ago'
```































