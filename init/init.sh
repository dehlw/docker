#!/bin/bash
# run several init scripts

lockfile="/.dockinit.lock"

if [ -f $lockfile ]
then
echo "Have fun with the container."
/bin/bash

else
echo "Running network settings..."
/docker/initnetwork.sh

echo "Updating system..."
/docker/updatesystem.sh

echo "Customize console..."
/docker/customconsole.sh

echo "Installing tools..."
/docker/installtools.sh

touch $lockfile
echo "Container initialized."
# /bin/bash 
fi



