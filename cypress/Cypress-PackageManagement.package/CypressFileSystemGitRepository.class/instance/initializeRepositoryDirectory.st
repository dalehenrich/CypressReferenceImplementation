initializing - private
initializeRepositoryDirectory
  self remoteUrl: self url httpsAccessString.
  self
    gitCloneRepositoryAndCheckoutIn: self projectPath
    workingDirectory: self class gitRepositoryDir.
  (self isGitRepository: self directoryPath)
    ifFalse: [ self error: 'This url is not a git repository' , self url printString ]
