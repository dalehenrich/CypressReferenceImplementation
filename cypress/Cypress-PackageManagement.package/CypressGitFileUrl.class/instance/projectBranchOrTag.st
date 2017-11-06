accessing
projectBranchOrTag
  ^ projectBranchOrTag ifNil: [ 'master' ]
