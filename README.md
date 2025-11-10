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
