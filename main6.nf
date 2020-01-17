methods = ['regular', 'expresso', 'psicoffee']

process alignSequences {
  input:
  each mode from methods

  """
  echo $mode
  """
}
