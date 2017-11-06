converting
stringForVariables: variableList

	| stream |
	stream := WriteStreamPortable on: (String new: 100).
	variableList do: [:each | stream nextPutAll: each]
		separatedBy: [stream space].
	^stream contents
