comparing - private
addMethodRemoval: aCypressModification to: aCollection
  aCollection
    add:
      {(aCypressModification definition details).
      #'removal'.
      #'method'.
      (aCypressModification definition source)}
