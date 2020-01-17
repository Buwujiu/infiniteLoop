#!/bin/bash

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
  input: 
    val x from cheers
  script:
    """
    echo '$x world!'
    """
}

process infiniteLoop {
    """
    while true
    do
        echo "Press [CTRL+C] to stop.."
        sleep 1
    done    
    """
}


