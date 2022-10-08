#!/bin/bash

kill `cat pid-holder.txt`

cd /home/mao/documents/automation-server-notepad/webhook

./run.sh
