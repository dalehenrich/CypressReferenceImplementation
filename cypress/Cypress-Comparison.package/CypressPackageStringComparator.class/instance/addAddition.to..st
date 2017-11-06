comparing - private
addAddition: aCypressModification to: aCollection
  aCypressModification definition
    classDefinition: [ :classDefinition | self addClassAddition: aCypressModification to: aCollection ]
    methodDefinition: [ :methodDefinition | self addMethodAddition: aCypressModification to: aCollection ]
