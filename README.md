In this repository you will get the code to build images like mysql,nginx and wordpress. Along with that yaml files to deploy those images has also been provided. 


Although for the sake of convenience you can follow the below listed commands in order to deploy the images  

helm repo add wordpress https://vyas8lakshita.github.io/wordpress/
helm repo list
helm search repo wordpress
helm install wordpress wordpress/wordpress

To check pods, svc, deployments, you can run 
kubectl get all
      or 
kubectl get pods 
kubectl get svc 
kubectl get deployment

