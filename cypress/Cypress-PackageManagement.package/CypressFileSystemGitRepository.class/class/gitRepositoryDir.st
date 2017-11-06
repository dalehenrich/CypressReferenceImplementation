accessing
gitRepositoryDir
  | path |
  path := (SessionTemps current at: #'Cypress_FileSystem_Git_Repository_Directory' otherwise: nil)
    ifNil: [
      path := (System gemEnvironmentVariable: 'GEMSTONE_GITDIR')
        ifNil: [ 
          CypressFileUtilities current workingDirectory
          , CypressFileUtilities current pathNameDelimiter , 'cypress-git-repos' ].
      SessionTemps current at: #'Cypress_FileSystem_Git_Repository_Directory' put: path ].
  ^path
