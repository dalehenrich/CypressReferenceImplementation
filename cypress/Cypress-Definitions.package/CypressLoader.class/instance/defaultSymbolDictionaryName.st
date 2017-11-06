accessing
defaultSymbolDictionaryName
  ^ defaultSymbolDictionaryName ifNil: [ self class defaultSymbolDictionaryName ]
