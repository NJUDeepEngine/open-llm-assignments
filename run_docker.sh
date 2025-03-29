#!/bin/bash

# basic info
docker_prefix=docker.io/library
docker_name="a3_env"
docker_version=1

workspace_dir="workspace"
repo_name="a3_repo"

# from light ubuntu image or ngc pytorch image
from_light_image=true

if [[ $from_light_image = true ]]; then
    docker_name="${docker_name}_light"
fi

# (optional) set nvidia-docker gpu options
gpu_enable=false
if [[ $gpu_enable = true ]]; then
    docker_gpu_options="
        --gpus all \
        --shm-size=32g \
        --ulimit memlock=-1 \
        --ulimit stack=67108864 \
    "
else docker_gpu_options=""; fi


# load docker image tar (default "true" for the first time, then you can toggle it to "false")
load_enable=true
if [[ $load_enable = true ]]; then
    docker load -i "${docker_name}_v${docker_version}".tar
fi


# run docker image and mount current dir to workspace
docker run -it \
        --ipc=host \
        $docker_gpu_options \
        -v "$(pwd)":/$workspace_dir/$repo_name \
        "${docker_prefix}/${docker_name}:v${docker_version}"