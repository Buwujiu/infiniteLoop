#!/bin/bash

process countTenMins {
  script:
    """
    sleep 5
    """
}

process mainProcess {
    """
    while true
    do
        echo "Press [CTRL+C] to stop.."
        sleep 1
    done    
    """
}


