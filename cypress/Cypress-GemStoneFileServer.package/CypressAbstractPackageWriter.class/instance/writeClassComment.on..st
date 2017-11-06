writing
writeClassComment: classStructure on: fileStream

	fileStream
		nextPutAll: (CypressObject normalizeLineEndingsOf: classStructure comment)
