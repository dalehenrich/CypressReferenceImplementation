comparing - private
addMethodModification: aCypressModification to: aCollection
  aCollection
    add:
      {(aCypressModification modification details).
      #'modification'.
      #'method'.
      (aCypressModification obsoletion source).
      (aCypressModification modification source)}
