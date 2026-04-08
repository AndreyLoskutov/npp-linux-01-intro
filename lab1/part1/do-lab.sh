#!/usr/bin/bash

# Create a bridge on the switch container
docker exec clab-lab1-part1-switch ip link add name mybridge type bridge

# Bring the bridge up
docker exec clab-lab1-part1-switch ip link set mybridge up

# Add all switch ports as bridge members
docker exec clab-lab1-part1-switch ip link set eth1 master mybridge
docker exec clab-lab1-part1-switch ip link set eth2 master mybridge
docker exec clab-lab1-part1-switch ip link set eth3 master mybridge
docker exec clab-lab1-part1-switch ip link set eth4 master mybridge

# Bring all ports up
docker exec clab-lab1-part1-switch ip link set eth1 up
docker exec clab-lab1-part1-switch ip link set eth2 up
docker exec clab-lab1-part1-switch ip link set eth3 up
docker exec clab-lab1-part1-switch ip link set eth4 up
