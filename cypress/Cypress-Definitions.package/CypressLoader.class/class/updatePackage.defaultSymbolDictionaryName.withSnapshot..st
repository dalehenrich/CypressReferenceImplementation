loading
updatePackage: aPackage defaultSymbolDictionaryName: defaultSymbolDictionaryName withSnapshot: aSnapshot
  "Answer the loader used to apply the update."

  ^ self new
    defaultSymbolDictionaryName: defaultSymbolDictionaryName;
    updatePackage: aPackage withSnapshot: aSnapshot;
    load
