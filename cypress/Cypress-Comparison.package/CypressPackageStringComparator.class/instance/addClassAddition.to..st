comparing - private
addClassAddition: aCypressModification to: aCollection
  aCollection
    add:
      {(aCypressModification definition details).
      #'addition'.
      #'class'.
      (aCypressModification definition classDefinitionString)}
