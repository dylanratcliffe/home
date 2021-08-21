#!/bin/bash

DAEMON=git/go/src/github.com/dylanratcliffe/deviant_cli
GUI=git/deviant-gui

# TODO: Check if there is already a session and join it

tmux new-session -s "Deviant" \; \
    rename-window "Daemon" \; \
    send-keys "cd ${DAEMON}" C-m \; \
    send-keys 'go run main.go daemon --log trace ' \; \
    split-window -h \; \
    send-keys "cd ${DAEMON}" C-m \; \
    send-keys './acceptance/minikube.sh && minikube stop ' \; \
    split-window -v \; \
    send-keys "cd ${DAEMON}" C-m \; \
    send-keys 'sudo bpytop' \; \
    new-window \; \
    rename-window "GUI" \; \
    send-keys "cd ${GUI}" C-m \; \
    split-window -h \; \
    send-keys "cd ${GUI}" C-m \;