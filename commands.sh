psql -h cdr.cnxpo2fpthz4.us-east-1.rds.amazonaws.com -U postgres postgres


git@github.com:ninhnvt/cloud-developer-project-3.git




git remote set-url origin git@github.com:username/repository.git








eksctl create cluster --name my-cluster --region us-east-1 --nodegroup-name my-nodes --node-type m5.large --nodes 2 --nodes-min 2 --nodes-max 3


aws eks --region us-east-1 update-kubeconfig --name my-cluster

kubectl config current-context

eksctl delete cluster --name my-cluster --region us-east-1


 
 eksctl create cluster --name my-cluster --region us-east-1 --nodegroup-name my-nodes --node-type m5.large --nodes 2 --nodes-min 2 --nodes-max 3




kubectl exec -it backend-feed-6b66fbc598-r5776 -- /bin/bash

kubectl delete -f aws-secret.yaml
kubectl delete -f env-configmap.yaml
kubectl delete -f env-secret.yaml
kubectl delete -f udagram-api-user.yaml
kubectl delete -f udagram-api-feed.yaml
kubectl delete -f udagram-frontend.yaml
kubectl delete -f udagram-reverseproxy.yaml
kubectl delete -f service-udagram-api-user.yaml
kubectl delete -f service-udagram-frontend.yaml
kubectl delete -f service-udagram-api-feed.yaml
kubectl delete -f service-udagram-reverseproxy.yaml




kubectl apply -f aws-secret.yaml
kubectl apply -f env-configmap.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f udagram-api-user.yaml
kubectl apply -f udagram-api-feed.yaml
kubectl apply -f udagram-frontend.yaml
kubectl apply -f udagram-reverseproxy.yaml
kubectl apply -f service-udagram-api-user.yaml
kubectl apply -f service-udagram-frontend.yaml
kubectl apply -f service-udagram-api-feed.yaml
kubectl apply -f service-udagram-reverseproxy.yaml



kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy
kubectl get services


docker system prune -a

docker build . -t ninhnvt/udagram-frontend:v6
docker push ninhnvt/udagram-frontend:v6
kubectl set image deployment frontend frontend=ninhnvt/udagram-frontend:v6


docker build -t udagram-api-feed ./udagram-api-feed
docker tag udagram-api-feed ninhnvt/udagram-api-feed:v1
docker push ninhnvt/udagram-api-feed:v1


docker build -t udagram-api-user ./udagram-api-user
docker tag udagram-api-user ninhnvt/udagram-api-user:v1
docker push ninhnvt/udagram-api-user:v1


docker build -t udagram-reverseproxy ./udagram-reverseproxy
docker tag udagram-reverseproxy ninhnvt/udagram-reverseproxy:v1
docker push ninhnvt/udagram-reverseproxy:v1

docker build -t udagram-frontend ./udagram-frontend
docker tag udagram-frontend ninhnvt/udagram-frontend:v2
docker push ninhnvt/udagram-frontend:v2


kubectl get pod -owide

kubectl logs 

kubectl apply -f backend-feed-hpa.yaml  
kubectl apply -f backend-user-hpa.yaml  
kubectl apply -f frontend-hpa.yaml      
kubectl apply -f reverseproxy-hpa.yaml  
