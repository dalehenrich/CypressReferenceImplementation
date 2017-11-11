"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: operations
"
loadMethodDefinition: aPatchOperation
  [ 
  [ 
  aPatchOperation
    loadMethodDefinition: self lookupSymbolList
    environmentLoader: self ]
    on: CompileError
    do: [ :ex | self handleCompileError: ex from: aPatchOperation ] ]
    on: Error
    do: [ :ex | self handlePatchOperation: aPatchOperation failure: ex ]