initializing
comparingPackages: someNames fromDirectory: aDirectory
  (directoryPackageMap at: aDirectory ifAbsentPut: [ OrderedCollection new ])
    addAll: someNames.
  someNames
    do: [ :packageName | 
      | reader |
      reader := (CypressFileSystemRepository on: aDirectory) reader
        readPackageStructureForPackageNamed: packageName.
      diskSnapshots at: packageName put: reader packageStructure snapshot.
      imageSnapshots
        at: packageName
        put: (CypressPackageDefinition named: packageName) snapshot ]
