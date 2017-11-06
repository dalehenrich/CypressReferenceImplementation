writing
removeOldReplacingWithNew

	self fileUtils deleteAll: self packageDirectory
		rejecting: 
			[:filename |
			"do not delete the monticello.meta directory to preserve existing Monticello meta data.
       Equivalent behavior to MCFileTreeRepository with Metadata property set to false."
			(self string: filename endsWith: 'monticello.meta')
				or: [ (self string: filename endsWith: '.filetree')
					or: [self string: filename endsWith: 'methodProperties.json']]].
	self writePropertiesFile.
	self writePackageStructure
