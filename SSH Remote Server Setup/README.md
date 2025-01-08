# [SSH Remote Server Setup | roadmap.sh](https://roadmap.sh/projects/ssh-remote-server-setup)

## Requirements:
You are required to setup a remote linux server and configure it to allow SSH connections.

* Register and setup a remote linux server on any provider e.g. a simple droplet on DigitalOcean which gives you $200 in free credits with the link. Alternatively, use AWS or any other provider.
* Create two new SSH key pairs and add them to your server.
* You should be able to connect to your server using both SSH keys.
* You should be able to use the following command to connect to your server using both SSH keys.
```
ssh -i <path-to-private-key> user@server-ip
```
Also, look into setting up the configuration in ~/.ssh/config to allow you to connect to your server using the following command.

```
ssh <alias>
```

* The only outcome of this project is that you should be able to SSH into your server using both SSH keys. Future projects will cover other aspects of server setup and configuration.

### Stretch goal: install and configure fail2ban to prevent brute force attacks.

## Solution

On this project, I use Amazon Web Service EC2 instance

### Step 1: Sign / Create account to AWS

### Step 2: Launch an instance
* Use the "Amazon Machine Image (AMI)" free tier
* Instance Type: t2.micro
* Create a new key pair. RSA and .pem for OpenSSH
* Save the .pem file that will be created.
* Click Launch instance
* Note the Public IP address and the username create. For AWS the default user is ec2-user and the IP is displayed on the instance console.
  
### Step 3: 
* open your terminal cmd or bash
* connect via SSH
  ```
  ssh -i "path\to\the\ssh\key.pem" ec2-user@<EC2 IP Address>
  ```
# To connect automatically
* add the below to ~/.ssh/config
  ```
  Host remote-server
    HostName IPADDRESS
    User ec2-user
    IdentityFile 'path\to\the\ssh\key.pem'

  ```
* connect via
  ```
  ssh remote-server
  ```
  

