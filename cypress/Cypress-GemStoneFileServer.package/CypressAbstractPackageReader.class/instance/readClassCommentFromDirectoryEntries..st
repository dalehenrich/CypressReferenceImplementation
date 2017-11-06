reading
readClassCommentFromDirectoryEntries: entries

	self fileUtils readStreamFor: (entries
				detect: [:entry | self string: entry endsWith: '/README.md']
				ifNone: [^''])
		do: [:fileStream | ^fileStream contents]
