```
# Stop and remove containers
sudo docker rm -f express-app nginx-proxy

# Remove old network
sudo docker network rm devops-net

# Recreate everything
sudo docker network create devops-net
sudo docker run -d --name express-app --network devops-net devops-express-app
sudo docker run -d --name nginx-proxy \
  -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
  -p 80:80 \
  --network devops-net \
  nginx

```
# Chiesa_Remy_Uwimana
