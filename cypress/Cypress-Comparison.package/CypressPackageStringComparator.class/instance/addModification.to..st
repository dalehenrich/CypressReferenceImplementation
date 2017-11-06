comparing - private
addModification: aCypressModification to: aCollection
  aCypressModification modification
    classDefinition: [ :classDefinition | self addClassModification: aCypressModification to: aCollection ]
    methodDefinition: [ :methodDefinition | self addMethodModification: aCypressModification to: aCollection ]
