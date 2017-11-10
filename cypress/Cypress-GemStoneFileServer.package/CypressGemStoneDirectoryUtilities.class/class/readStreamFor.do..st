utilities
readStreamFor: filePath do: aOneArgBlock

	| file stream blockResult |
	GsFile serverErrorString.
	file := GsFile openReadOnServer: filePath.
	GsFile serverErrorString ifNotNil: [:errorMessage | self error: errorMessage].
	[stream := ReadStreamPortable on: (String withAll: file contents asByteArray decodeFromUTF8).
	blockResult := aOneArgBlock value: stream] ensure: [file close]
	^ blockReslt
