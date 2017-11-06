accessing
packageNames

	| extension extensionSize |
	extension := self packageExtension.
	extensionSize := extension size.
	^(self fileUtils
		directoryEntriesFrom: self directoryPath , '*' , extension) collect: 
				[:each |
				| localName |
				localName := self fileUtils localNameFrom: each.
				localName copyFrom: 1 to: localName size - extensionSize]
