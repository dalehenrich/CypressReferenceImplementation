git querying
isGitRepository: aDirectory
  "Check that we have a git repository"

  | gitPath |
  gitPath := self gitCommand: #('rev-parse' '--show-toplevel') in: aDirectory.
  (gitPath indexOfSubCollection: 'fatal:') = 1
    ifTrue: [ ^ false ].
  ^ true
