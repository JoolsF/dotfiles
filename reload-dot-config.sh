#!/bin/bash

stow dot-config

# I3

I3PATH="${HOME}/.config/i3"
I3_MACHINE_CONFIG=$1
echo "Applying $I3_MACHINE_CONFIG machine config to base"

cat ${I3PATH}/config.base ${I3PATH}/$I3_MACHINE_CONFIG > $I3PATH/config

