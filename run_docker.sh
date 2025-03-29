#!/bin/bash

# basic info
docker_prefix=docker.io/library
docker_name="a_env"
docker_version=2

workspace_dir="workspace"
repo_name="a_repo"

# run light image based on ubuntu or heavy one based on ngc pytorch
run_light_image=true

# whether to run base image
run_base_image=false


if [[ $run_light_image = true ]]; then
    if [[ $run_base_image = true ]]; then
        docker_name="${docker_name}_light_base"
    else
        docker_name="${docker_name}_light"
    fi
else
    if [[ $run_base_image = true ]]; then
        docker_name="${docker_name}_base"
    else
        docker_name="${docker_name}"
    fi
fi

# (optional) set nvidia-docker gpu options
gpu_enable=true
if [[ $gpu_enable = true ]]; then
    docker_gpu_options="
        --gpus all \
        --shm-size=32g \
        --ulimit memlock=-1 \
        --ulimit stack=67108864 \
    "
else docker_gpu_options=""; fi


# load docker image tar (default "true" for the first time, then you can toggle it to "false")
load_enable=false
if [[ $load_enable = true ]]; then
    docker load -i "${docker_name}_v${docker_version}".tar
fi


# run docker image and mount current dir to workspace
docker run -it \
        --ipc=host \
        $docker_gpu_options \
        -v "$(pwd)":/$workspace_dir/$repo_name \
        "${docker_prefix}/${docker_name}:v${docker_version}"