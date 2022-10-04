# This demonstrates the regression on --print behaviour :


## Do not work anymore :

docker build --build-arg=buildx_version=v0.9 .
docker build --build-arg=buildx_version=latest .

# Downgrading to 0.8.2 works : 

docker build --build-arg=buildx_version=0.8.2 .
