writing
writeMethodStructure: methodStructure onStream: fileStream

	fileStream
		nextPutAll: methodStructure category;
		lf;
		nextPutAll: (CypressObject normalizeLineEndingsOf: methodStructure source)
