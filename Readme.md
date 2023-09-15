# Guvi-task
Build the application in docker and push it to the dockerhub repo, These process run automatically in Jenkins server. Github web hook set-up will trigger the build each time the code is pushed to the repository.
    
Application is successfully built and pushed to the dockerhub repository 
[Click here!](https://hub.docker.com/r/muthuinc/guvitask/tags)

#### Pre-requisities
 - Valid AWS account - we create our Jenkins sereve there.
 - IAM user credentials for server creation in terraform.
 - Private key to access the machine for the configuration management.
 - Valid github account to store the application code in a repository
 - Valid dockerhub account and PAT _(personal access token)_ to authenticate the registry and push images.
 - terraform and ansible installed machine. For terraform installation refer [here](https://developer.hashicorp.com/terraform/downloads) & For ansible refer [here](https://docs.ansible.com/ansible/latest/installation_guide/index.html)

 #### Description

 We are going to create the EC2 instance in the AWS for Jenkins server. Inside the **subbranch** terraform files and ansible files are present to create and set-up all the tools for this. Follow the steps.  

 Give execute permission to make.sh file
 ```
     chmod +x make.sh
 ```

 Run the file
```
  ./make.sh
```

Wait for some time. it will take some time to complete it, First it create an Ec2 server and then installs the jenkins and other related stuffs.
It will show the **ip address** of the machine and the **initial admin password** of the jenkins

Open the Ip address with the port extension 8080. Install the recommended plugins and create your own username and password.

Create a Pipeline Job --name it anything. select the configuration setting as needed, Our case refer the picture [select the GitHub hook trigger for GITScm pollin](pictures/config.png)
