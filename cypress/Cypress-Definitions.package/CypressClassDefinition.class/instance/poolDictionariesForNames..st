"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: loading
"
poolDictionariesForNames: pdNames
  | ar existingDict symList sharedPool |
  ar := Array new.
  symList := System myUserProfile symbolList.
  pdNames
    do: [ :poolName | 
      existingDict := symList objectNamed: poolName.
      existingDict
        ifNil: [ 
          | pool |
          pool := SymbolDictionary new.
          pool name: poolName asSymbol.
          ar add: pool ]
        ifNotNil: [ 
          (existingDict isKindOf: SymbolDictionary)
            ifTrue: [ ar add: existingDict ]
            ifFalse: [ 
              sharedPool ifNil: [ sharedPool := symList objectNamed: #'SharedPool' ].
              ((existingDict isKindOf: Class)
                and: [ existingDict isSubclassOf: sharedPool ])
                ifTrue: [ 
                  | cvars pName |
                  ar add: (cvars := existingDict _createClassVarsDict).
                  pName := poolName asSymbol.	"only change dictionary name if needed , to avoid SecurityError"
                  cvars name ~~ pName
                    ifTrue: [ cvars name: pName ] ] ] ] ].
  ^ ar
