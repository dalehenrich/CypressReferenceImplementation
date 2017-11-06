*Cypress-Comparison
classCreationSelector
  | type |
  type := self subclassType.
  type = ''
    ifTrue: [ ^ 'subclass:' ]
    ifFalse: [ 
      type = 'indexableSubclass'
        ifTrue: [ ^ 'indexableSubclass:' ]
        ifFalse: [ 
          type = 'byteSubclass'
            ifTrue: [ ^ 'byteSubclass:' ]
            ifFalse: [ self error: 'unknown subclass type: ' , type ] ] ]
