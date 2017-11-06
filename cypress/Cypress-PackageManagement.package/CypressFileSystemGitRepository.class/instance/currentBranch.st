accessing
currentBranch
  | result |
  result := self
    gitCommand: #('rev-parse' '--abbrev-ref' 'HEAD')
    in: self directoryPath.
  ^ result trimWhiteSpace
