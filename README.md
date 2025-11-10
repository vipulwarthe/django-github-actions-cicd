# sp-github-actions-cicd-project

    1   sudo apt-get update && sudo apt-get upgrade -y   (update the packages)   
    2   sudo apt install python3-venv -y          (install python environment)
    3   python3 -m venv MLPRO                     (create environment name MLPRO)  
    4   source MLPRO/bin/activate                 (activate the environment)
    5   deactivate                                (to deactivate the envirnoment)
    6   mkdir mlproject                           (create one project directory)
    7   cd mlproject                              (enter in project directory)
    72  pip install -r requirements.txt 
    77  python application.py

access application locally on this url :- http://54.242.112.102:5000/predictdata 

now we can automate the application deployment with GITHUBACTIONS. 

Before Proceeding — You MUST configure AWS

GitHub → Repo → Settings → Secrets and Variables → Actions → New Repository Secret

Add these:

    SECRET NAME	                VALUE
    AWS_ACCESS_KEY_ID	        Your IAM User Access Key
    AWS_SECRET_ACCESS_KEY	    Your IAM Secret Key
    AWS_REGION	                e.g., ap-south-1
    ECR_REPOSITORY	            sp-student-performance (or any name you want)
    ECS_CLUSTER	                student-ecs-cluster
    ECS_SERVICE	                student-app-service
    ECS_TASK_DEFINITION	        ecs-task.json (we will create this)

This is only used when you need to create docker image and container only with dockerhub.

✅ Option 1 — Push Docker Image to DockerHub (recommended for now)

Before using this, go to GitHub:

Settings → Secrets and variables → Actions → New repository secret

Add:

    Secret Name	        Value
    DOCKER_USERNAME	    your-dockerhub-username
    DOCKER_PASSWORD	    your-dockerhub-password
