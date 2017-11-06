utilities
directoryFromPath: directoryPath relativeTo: aDirectory

	| delimiter |
	delimiter := self pathNameDelimiter.
	^(aDirectory last = delimiter last
		or: [(directoryPath indexOfSubCollection: delimiter) = 1])
			ifTrue: [aDirectory , directoryPath]
			ifFalse: [aDirectory , delimiter , directoryPath]
