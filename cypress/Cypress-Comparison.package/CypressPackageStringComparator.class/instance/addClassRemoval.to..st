comparing - private
addClassRemoval: aCypressModification to: aCollection
  aCollection
    add:
      {(aCypressModification definition details).
      #'removal'.
      #'class'.
      (aCypressModification definition classDefinitionString)}
