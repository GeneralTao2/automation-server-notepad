#!/bin/bash

cd /home/mao/documents/automation-server-notepad/webhook

webhook -hooks data/hooks.json &

echo $! > pid-holder.txt