#!/bin/bash

echo maven > $PWD/.auth
echo $BUILD_TAG > $PWD/.auth
echo $PASS > $PWD/.auth

scp $PWD/.auth vagrant@localhost:/tmp/.auth
scp ./jenkins/deploy/publish vagrant@localhost:/tmp/publish
ssh vagrant@localhost "/tmp/publish"
