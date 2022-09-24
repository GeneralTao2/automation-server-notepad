while true; do eval "$(cat /path/to/pipe/mypipe)"; done
#while true; do eval "$(cat /path/to/pipe/mypipe)" &> /somepath/output.txt; done

#crontab -e
#@reboot /path/to/execpipe.sh