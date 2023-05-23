# terraform-aws-elastic-beanstalk-and-s3-with-cloudfront-distribution
# Amazon Web Services

## What is AWS:
  Amazon Web Services, Inc. is an Amazon company that offers metered, pay-as-you-go on-demand cloud computing platforms and APIs to people, businesses, and governments. This is frequently used in conjunction with autoscaling by clients. The most complete and widely used cloud in the world, Amazon Web Services (AWS), provides over 200 fully functional services from data centers across the world. Millions of clients use AWS to save costs, increase agility, and accelerate innovation, including the largest corporations, most successful governmental organizations, and the fastest-growing startups.

## Why use AWS:
Benefits of using AWS are:
* Easy to use
* Flexible
* Cost effective
* Reliable
* Scalable and high performance
* Secure

## Getting started with AWS:
1. Go to the AWS home page [AWSHomePage](https://aws.amazon.com/).
2. Click on Sign in to the console on the top right corner.
3. Sign in/Sign up into AWS.
4. To sign up enter your email address and AWS account name and then click on verify email address.
5. Enter the verification code and click verify.
6. Enter your password and make sure to follow the password requirements.
7. Enter contact information.
8. Enter the payment details. Make sure you have a Mastercard/American Express/ Visa Credit card and international payments should be enabled.
9. Confirm your identity by receiving verification code on your mobile phone.
10. Type captcha you see on screen and click on send sms.
11. Once done, select a support plan on the next screen and click on complete sign up.

## Amazon S3 Bucket:
   An object storage service called Amazon Simple Storage Service (Amazon S3) provides performance, security, and scalability that are unmatched in the market. Any quantity of data can be stored and protected by customers of all sizes and sectors for practically any use case, including data lakes, cloud-native applications, and mobile apps. You may reduce expenses, organize data, and set up precise access controls to satisfy unique business, organizational, and compliance requirements using cost-effective storage classes and simple administration tools.


## Why S3 Bucket:
  Following are the benefits of using s3 bucket:
* High availability
* Limitless server capacity
* Ease of use
* Durability
* Security
* Different storage classes
* Horizontal scaling
  
![Amazon Web Services (4)](https://github.com/mobilelive-inc/iac-crypto-app/assets/129104397/f6024292-e7fe-42f7-85ce-3f3edeaca32c)

## Creating S3 Bucket using Terraform:
   This is why we're using the git repository at [GithubRepo](https://github.com/mobilelive-inc/iac-crypto-app/tree/main). The .tf files required to use Terraform to establish an S3 bucket on AWS can be found in the modules/s3 folder after the repository has been cloned. 
   After writing the code from the above repository, you need to run the following commands to create AWS s3 bucket:
   
1. ```terraform 
      terraform init
      ```
Run the above command to initiate Terraform. A Terraform working directory, commonly referred to as a Terraform project, is initialized using the terraform init command. Any necessary Terraform providers and plugins used in the Terraform code will be downloaded and installed automatically when the init command is executed.

2. ```terraform 
      terraform plan
      ``` 
Now run the above command to create an execution plan for Terraform. This command is a convenient way to check whether the execution plan for a set of changes matches your expectations without making any changes to real resources or to the state. 
 
3. ```terraform 
      terraform apply
      ```
In the end use the above command to apply and you will be able to see s3 bucket created in AWS.

## Deploying Application into s3 Bucket using Github Actions:
   We are utilizing the git repository found at [GithubRepo](https://github.com/mobilelive-inc/prf-frontend-portal/tree/main) to deploy the application to the S3 bucket. When you click on this link, a folder called ".github/workflows" will appear, and inside of it, you'll find a YAML file that explains how to deploy your application.

## AWS Elastic Beanstalk:
  Over a hundred services make up Amazon Web Services (AWS), each of which offers a different functional area. The range of services available gives you freedom in how you wish to manage your AWS infrastructure, but choosing which ones to employ and how to provide them can be difficult. You can quickly build and maintain apps in the AWS Cloud using Elastic Beanstalk without needing to understand the technology that powers those applications. Elastic Beanstalk lessens the complexity of management without limiting choice or control. You only need to submit your application, elastic beanstalk will take care of the capacity provisioning, load balancing, scaling, and application health monitoring information automatically. Applications created in Go, Java,.NET, Node.js, PHP, Python, and Ruby are supported by Elastic Beanstalk. Elastic Beanstalk creates the chosen supported platform version and sets up one or more AWS resources, like Amazon EC2 instances, to run your application when you deploy it.

## Why Elastic Beanstalk:
  Here some benefits of using aws elastic beanstalk:
* Automatic scaling
* Immediate and direct troubleshooting
* Enhanced security
* Ease of deployment
* Support multi platforms like PHP, Python, Java etc.
* In-built load balancing

![Amazon Web Services (3)](https://github.com/mobilelive-inc/iac-crypto-app/assets/129104397/034353c8-273f-4004-9177-109a2fed47ab)

## Creating Elastic Beanstalk using Terraform:
   We are using [GithubRepo](https://github.com/mobilelive-inc/iac-crypto-app/tree/main) as our git repository for this purpose.  After cloning the repository, navigate to the modules/elastic_beanstalk folder to find the .tf files needed to use Terraform to build an elastic beanstalk on AWS. 
   After writing the code from the above repository, you need to run the following commands to see elastic beanstalk in AWS:

1. ```terraform        
      terraform init
      ```
To start a Terraform working directory, sometimes referred to as a Terraform project, use the terraform init command. Any necessary Terraform plugins and providers used in the Terraform code will be downloaded and installed automatically when the init command is executed.

2. ```terraform     
      terraform plan
      ``` 
Now run the above command to create an execution plan for Terraform. Without affecting the state or real resources, this command is a useful way to see if the execution plan for a set of modifications fulfills your expectations. 

3. ```terraform       
      terraform apply
      ``` 
The steps suggested in a Terraform plan are carried out using the above terraform apply command.

## Deploying Application to AWS Elastic Beanstalk using Github Actions:
   You can look at the git repository we are using [GithubRepo](https://github.com/mobilelive-inc/prf-backend-portal) to deploy an application onto elastic beanstalk. After selecting the link, you will be taken to a folder called.github/workflows where a YAML file known as deployment.yml demonstrating how to deploy an application to elastic beanstalk is located.

## AWS CloudFront:
The online service Amazon CloudFront makes it faster for users to access your static and dynamic web content, including.html,.css,.js, and picture files. Edge locations are a global network of data centers that CloudFront uses to deliver your content. In order to serve content with the optimal performance, a user's request for content that you are providing with CloudFront is routed to the edge location that has the lowest latency. To tell CloudFront where you want content to be delivered from and the specifics of how to track and control content delivery, you construct a CloudFront distribution. Then, when someone wants to view or utilize that content, CloudFront employs computer edge servers that are close to your viewers to quickly provide it.
 
![Amazon Web Services (2)](https://github.com/mobilelive-inc/iac-crypto-app/assets/129104397/d5a9c6c3-346a-448e-a9a1-0c4e344d0966)

## Why CloudFront:
  Here are some of the benefits that you get while using cloudfront:
* It will cache your content in the edge locations and decrease your workload.
* It is simple to use and ensures productivity enhancement.
* It provides high security
* It used HTTP or HTTPS protocols for quick delivery of content.
* It is less expensive

## Creating AWS CloudFront using Terraform:
   We are using [GithubRepo](https://github.com/mobilelive-inc/iac-crypto-app/tree/main) as our git repository for this purpose.  After cloning the repository, navigate to the modules/cloud_front folder to find the .tf files needed to use Terraform to build cloudfront on AWS. 
   After writing the code from the above repository, you need to run the following commands:

1. ```terraform  
      terraform init
      ```
An initial working directory containing Terraform configuration files is created with the terraform init command. Any necessary Terraform providers and plugins used in the Terraform code will be downloaded and installed automatically when the init command is executed.

2. ```terraform
      terraform plan
      ```
Now run the above command to create an execution plan for Terraform. You can preview the steps Terraform would take to change your infrastructure using the terraform plan command, or you can save a hypothetical plan that you can use at a later time. 

3. ```terraform
      terraform apply
      ```
The steps outlined in a Terraform plan are carried out using the apply command.