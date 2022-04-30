# here use tab
build_1:
	podman build --format docker --no-cache  -t valleybee/python:v1 -f ./Dockerfile
build_2:
	podman build --format docker --no-cache  -t valleybee/alpine:v1 -f ./Dockerfile_2
# network trouble-shooting  IMAGE

run_1:
	podman run  -t -d --env-file ./config/.env --name python_work valleybee_python:v1 /bin/bash
# add volume (logs) to check podman volume ls. it shares to other containers 
run_2:
	podman run  -t -d -v logs:/app/data --net=host --name alpine_work_host valleybee_alpine:v1 ash
# add volume (logs) and attach a directory for share between OS and containers
run_3:
	podman run  -t -d -v /home/admin/valley_project/python_v1:/app:Z -v logs:/app/data --name python_work_v3 valleybee_python:v2 /bin/bash
run_4:
	podman pull docker.io/nicolaka/netshoot:latest
# network trouble-shooting  IMAGE
	podman run -it --rm --net=host  --name netshoot_v1 nicolaka/netshoot  /bin/bash
# run container which attached to host-network to network trouble-shooting 
run_5:
	podman run -it --rm --net=webnetwork --hostname netshoot --name netshoot_v1 nicolaka/netshoot  /bin/bash
new_net:
	podman network create -d bridge -o parent=ens18:2 --subnet 192.168.100.0/24 --gateway 192.168.100.1 --ip-range 192.168.100.113/32 newnet

stop:
	podman stop python_work
start:
	podman start python_work
rm_python:
	podman stop python_work
	podman rm python_work
	podman rmi valleybee_python:v1
rm_none:
	./rmi_none_images.sh
#podman rmi $(podman images  | grep none | awk '{ print $3 }')
