"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: loading
"
loadResolvedReferences
  | cypressLoader |
  cypressLoader := CypressEnvironmentLoader new.
  cypressLoader
    defaultSymbolDictionaryName: self defaultSymbolDictionaryName;
    compilationSymbolList: self compilationSymbolList;
    lookupSymbolList: self lookupSymbolList;
    defaultEnvironmentId: self defaultEnvironmentId.
  self resolvedPackageReferences
    do: [ :resolvedReference | 
      | package repository snapshot |
      package := resolvedReference packageDefinition.
      repository := resolvedReference repository.
      snapshot := (repository
        readPackageStructureForPackageNamed: resolvedReference name) snapshot.
      cypressLoader updatePackage: package withSnapshot: snapshot ].
  cypressLoader load.
  cypressLoader unloadable notEmpty
    ifTrue: [ self error: 'Unloadable definitions' ].
  cypressLoader errors notEmpty
    ifTrue: [ self error: 'Load errors' ].
  cypressLoader requirements notEmpty
    ifTrue: [ self error: 'Missing Requirements' ]