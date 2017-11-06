accessing
packageName

	| extension extensionSize stopIndex |
	extension := self packageExtension.
	extensionSize := extension size.
	stopIndex := self name
				indexOfSubCollection: extension
				startingAt: self name size - extensionSize + 1
				ifAbsent: [self name size + 1].
	^self name copyFrom: 1 to: stopIndex - 1
