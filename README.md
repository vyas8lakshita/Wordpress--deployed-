To deploy the application, you can follow the below listed commands 

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

