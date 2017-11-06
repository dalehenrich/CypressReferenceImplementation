writing - private
fileOutClassDeclarationsOn: aStream

	self classesInDependencyOrder
		do: [:classStructure | self fileOutClassDeclaration: classStructure on: aStream]
