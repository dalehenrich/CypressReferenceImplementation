loading
actualClass

  ^ self theNonMetaClass
    ifNotNil: [:cls |
      self classIsMeta
        ifTrue: [ cls class ]
        ifFalse: [ cls  ] ].
