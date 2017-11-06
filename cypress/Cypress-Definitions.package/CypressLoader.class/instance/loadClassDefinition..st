operations
loadClassDefinition: aPatchOperation

	[ aPatchOperation loadClassDefinition: self defaultSymbolDictionaryName ]
		on: Error
		do: [:ex | self handlePatchOperation: aPatchOperation failure: ex].
