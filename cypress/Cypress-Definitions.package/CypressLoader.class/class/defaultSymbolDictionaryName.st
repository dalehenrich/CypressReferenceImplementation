accessing
defaultSymbolDictionaryName
  "Name of the SymbolDictionary where new classes should be installed"

  ^ (SessionTemps current 
      at: #'Cypress_Loader_Default_Symbol_Dictionary_Name' 
      ifAbsent: [] ) 
        ifNil: [
          System myUserProfile userId = 'SystemUser'
          ifTrue: [ #Globals ]
          ifFalse: [ #'UserGlobals' ] ]
