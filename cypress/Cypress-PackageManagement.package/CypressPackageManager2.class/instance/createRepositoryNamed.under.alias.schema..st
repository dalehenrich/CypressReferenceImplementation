Updating
createRepositoryNamed: aName under: aDirectory alias: aString schema: schemaName

	^CypressFileSystemRepository createOn: (CypressUrl
				absoluteFromText: schemaName
						, (CypressFileUtilities current directoryFromPath: aName
								relativeTo: aDirectory)
							, '/')
		alias: aString
