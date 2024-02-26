#!/bin/bash

echo maven > $PWD/.auth
echo $BUILD_TAG >> $PWD/.auth
echo $PASS >> $PWD/.auth

scp -i /opt/id_ed25519 $PWD/.auth vagrant@192.168.31.203:/tmp/.auth
scp -i /opt/id_ed25519 ./jenkins/deploy/publish vagrant@192.168.31.203:/tmp/publish
ssh -i /opt/id_ed25519 vagrant@192.168.31.203 "/tmp/publish"
