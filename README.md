# The Full procedure of doing this practical you can find in below link :

## “CI/CD pipeline using Jenkins Dynamic Nodes” by Raktim Midya - https://link.medium.com/rOcdB5K7bab

### Problem Statement :

1. Create a container image that has Linux and other basic configuration required to run Slave for Jenkins. ( example here we require kubectl to be configured )
2. When we launch the job it should automatically start job on slave based on the label provided for a dynamic approach.
3. Create a job chain of job1 & job2 using the build pipeline plugin in Jenkins
4. Job1: Pull the GitHub repo automatically when some developers push the repo to GitHub and perform the following operations as:
- I) Create the new image dynamically for the application and copy the application code into that corresponding docker image
- II) Push that image to the docker hub (Public repository)
Note: GitHub code contains the application code and Dockerfile to create a new image.
5. Job 2: Should be run on the dynamic slave of Jenkins configured with Kubernetes kubectl command. Launch the application on the top of the Kubernetes cluster performing the following operations:
- I) If launching the first time then create a deployment of the pod using the image created in the previous job. Else if deployment already exists then do a rollout of the existing pod making zero downtime for the user.
- II) If the Application created the first time, then Expose the application. Else don’t expose it.
