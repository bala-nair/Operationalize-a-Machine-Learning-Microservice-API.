<!DOCTYPE html>
<html>
   
   [![CircleCI](https://circleci.com/gh/bala-nair/Operationalize-a-Machine-Learning-Microservice-API..svg?style=svg)](https://circleci.com/gh/bala-nair/Operationalize-a-Machine-Learning-Microservice-API.)
   
   <h1>Operationalize a Machine Learning Microservice API</h1>

   <body>
      <h2>Project Overview</h2>

In this project, we have been asked to apply the skills that we have acquired in this course to operationalize a Machine Learning Microservice API.

We have been given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More information about the data, which was initially taken from Kaggle, is available on the data source site. This project tests the students ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

<h2>Project Tasks</h2>

The project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project i have completed the below tasks;


<h3>Task 1: Complete the Dockerfile</h3>

<h4>Create An Environment and Activate</h4>

<bold># python3 -m venv venv</bold>

<bold># source venv/bin/activate</bold>

<h4>Run Make Install</h4>

<bold># make install</bold>

<h4>Pass Lint</h4>

<bold># make lint</bold>

Making use of the Makefile and requirements.txt file

<h3>Task 2: Run a Container & Make a Prediction</h3> 

<bold># sudo ./run_docker.sh</bold>

<bold># sudo ./make_predictions.sh</bold>

<h3>Task 3: Improve Logging & Save Output</h3> 

<bold># cat docker_out.txt</bold>

 AttributeError: 'LeastSquaresError' object has no attribute 'get_init_raw_predictions'
[2019-09-09 13:30:29,418] INFO in app: JSON payload: 
{'CHAS': {'0': 0}, 'RM': {'0': 6.575}, 'TAX': {'0': 296.0}, 'PTRATIO': {'0': 15.3}, 'B': {'0': 396.9}, 'LSTAT': {'0': 4.98}}
[2019-09-09 13:30:29,429] INFO in app: Inference payload DataFrame: 
   CHAS     RM    TAX  PTRATIO      B  LSTAT
0     0  6.575  296.0     15.3  396.9   4.98
[2019-09-09 13:30:29,438] INFO in app: Scaling Payload: 
   CHAS     RM    TAX  PTRATIO      B  LSTAT
0     0  6.575  296.0     15.3  396.9   4.98
172.17.0.1 - - [09/Sep/2019 13:30:29] "POST /predict HTTP/1.1" 500 -
 

<h3>Task 4: Upload the Docker Image</h3> 

<bold># ./uplodad_docker.sh</bold>

Docker ID and Image: bnair75/boston-houseprices-inference:latest
The push refers to repository [docker.io/bnair75/boston-houseprices-inference]
a41255a9b34d: Pushed
latest: digest: sha256:0328a62265b3a17a0efdfc414ad23de9f56fb6bb52a549d62df59755bb9f64b4 size: 3261

<h3>Task 5: Configure Kubernetes to Run Locally</h3> 

<bold># minikube start</bold>

<bold># kubectl config view</bold>



<h3>Task 6: Deploy with Kubernetes and Save Output Logs</h3> 

<bold># ./run_kubernetes.sh</bold>

NAME                                   READY   STATUS    RESTARTS   AGE
boston-house-prices-85bd96c6b7-bhdvl   1/1     Running   0          14m
boston-house-prices-85bd96c6b7-gn477   1/1     Running   0          14m
NAME                  TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
boston-house-prices   NodePort   10.104.66.127   <none>        8000:32208/TCP   14m

<h4><bold> Output logs are available in files docker_out.txt and kubernetes_out.txt</h4></bold>

<h3>Task 7: [Important] Delete Cluster</h3> 


<h3>Task 8: CircleCI Integration</h3> 


<h3>Task 9: README.md</h3> 




