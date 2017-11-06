loading
updatePackage: aPackage defaultSymbolDictionaryName: defaultSymbolDictionaryName
  "Answer the loader used to apply the update."

  ^ CypressLoader
    updatePackage: aPackage
    defaultSymbolDictionaryName: defaultSymbolDictionaryName
    withSnapshot: self
