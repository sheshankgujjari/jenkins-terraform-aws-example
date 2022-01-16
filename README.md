# jenkins-terraform-aws-example
Jenkins terraform AWS example


### Add cloudbees aws credentials plugin

1. Login to Jenkins

2. Manage Jenkins --> Manage plugins

3. In available search for cloudbees aws credentials pluugin


### Add Terraform plugin

1. Login to Jenkins

2. Manage Jenkins --> Manage plugins

3. In available search for terraform plugin and install


### Add credentials to Jenkins

1. Create IAM user in AWS and store the keyId and secret is secured location

2. Login to Jenkins

3. Manage Jenkins --> Manage credentials

4. Add credentials in global location

5. From drop down chose AWS credentials, add key and secret

### Install terraform on Jenkins Server

1. ```sudo yum install -y yum-utils```

2. ```sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo```

3. ```sudo yum -y install terraform```

4. ```sudo yum -y install terraform```

5. Verify ```terraform -help```



