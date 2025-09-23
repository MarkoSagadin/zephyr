#! /usr/bin/env bash
# Usage scripts/enter_docker_environment.sh [zsh]
#
# This script enters the docker environment suitable for project development.
#
# If the first argument is "zsh", the script use the `zsh` docker image,
# otherwise the `dev` image is used.

# Get absolute path of the script location
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
WEST_DIR=$(realpath "${SCRIPT_DIR}"/..)

docker run -it --rm \
    --privileged \
    --volume "${WEST_DIR}":/home/user/workdir \
    --volume /dev:/dev \
    --workdir /home/user/workdir \
    --device-cgroup-rule='c 166:* rmw' \
    ghcr.io/irnas/ncs-zephyr-v3.0.2-dev

# Flags:
# --privileged,
# --volume /dev:/dev and
# --device-cgroup-rule
#
# Are needed to have access to the USB devices in the container.
# Number 166 corresponds to the major group number of tty devices.
# If this is not the case on your system, you can find the group number by
# running:
# ls -al /dev/tty*
