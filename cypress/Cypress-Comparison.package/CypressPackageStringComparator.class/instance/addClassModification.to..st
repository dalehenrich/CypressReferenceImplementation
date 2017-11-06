comparing - private
addClassModification: aCypressModification to: aCollection
  aCollection
    add:
      {(aCypressModification modification details).
      #'modification'.
      #'class'.
      (aCypressModification obsoletion classDefinitionString).
      (aCypressModification modification classDefinitionString)}
