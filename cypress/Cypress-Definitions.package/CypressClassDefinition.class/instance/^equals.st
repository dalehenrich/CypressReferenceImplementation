comparing
= aDefinition
  ^ super = aDefinition
    and: [ 
      superclassName = aDefinition superclassName
        and: [ 
          category = aDefinition category
            and: [ 
              instVarNames = aDefinition instVarNames
                and: [ 
                  classInstVarNames = aDefinition classInstVarNames
                    and: [ 
                      classVarNames asSortedCollection = aDefinition classVarNames asSortedCollection
                        and: [ 
                          poolDictionaryNames = aDefinition poolDictionaryNames
                            and: [ comment = aDefinition comment ] ] ] ] ] ] ]
