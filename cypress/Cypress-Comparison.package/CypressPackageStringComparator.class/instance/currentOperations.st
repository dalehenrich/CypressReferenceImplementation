comparing - private
currentOperations
  (self dynamicInstVarAt: #'currentOperations')
    ifNil: [ self updateCurrentOperations ].
  ^ self dynamicInstVarAt: #'currentOperations'
