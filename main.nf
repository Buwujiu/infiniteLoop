#!/bin/sh
echo true

cheers = Channel.from 'Bonjour'

process process_1 {
  input: 
    val x from cheers
  output:
    val x into output_1

  script:
    """
    echo '$x world - 1'
    sleep 6
    """
}

process process_2 {
  input: 
    val x from output_1
  output:
    val x into output_2
  script:
    """
    echo '$x world! - 2'
    sleep 600
    """
}

process process_3 {
  input: 
    val x from output_2
  output:
    val x into output_3
  script:
    """
    echo '$x world! - 3'
    sleep 600
    """
}

process process_4 {
  input: 
    val x from output_3
  output:
    val x into output_4
  script:
    """
    echo '$x world! - 4'
    sleep 600
    """
}
