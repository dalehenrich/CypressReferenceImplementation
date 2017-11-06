loading
unloadDefinition

  self actualClass ifNotNil: [:cl | cl removeSelector: self selector asSymbol ].
