
# exec
#  docker exec -i -t ${container-id} /bin/bash

image='toko-jupyter'

build:
	docker build -t $(image) .

bash:
	docker run -it  --user root  $(image)  /bin/bash
	
run:
	docker run -p 8888:8888  -e JUPYTER_ENABLE_LAB=yes -v /home/hurou/R-works:/home/jovyan/R-works $(image)
