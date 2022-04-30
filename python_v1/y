#!/bin/sh

podman rmi $(podman images  | grep none | awk '{ print $3 }')
