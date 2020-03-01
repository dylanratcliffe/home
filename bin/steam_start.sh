#!/bin/bash

# Get the name of the Steam volume
DISK=$(diskutil list | grep Steam | grep -oE '[^ ]+$')

# Unmount it
sudo diskutil umount $DISK

# Mount it in the correct location
sudo mount -t apfs $DISK /Users/dylanratcliffe/Library/Application\ Support/Steam

open -a Steam
