#!/bin/bash

PROTO=git/go/src/github.com/dylanratcliffe/sdp
PROTOGO=git/go/src/github.com/dylanratcliffe/sdp-go
PROTOJS=git/go/src/github.com/dylanratcliffe/sdp-js

# TODO: Check if there is already a session and join it

tmux new-session -s "SDP" \; \
    rename-window "Protocol" \; \
    send-keys "cd ${PROTO}" C-m \; \
    send-keys 'code .' \; \
    split-window -h \; \
    send-keys "cd ${PROTOGO}" C-m \; \
    send-keys 'code .' \; \
    split-window -v \; \
    send-keys "cd ${PROTOJS}" C-m \; \
    send-keys 'code .' \;
    #new-window \; \
    #rename-window "GUI" \; \
    #send-keys "cd ${GUI}" C-m \; \
    #split-window -h \; \
    #send-keys "cd ${GUI}" C-m \;
