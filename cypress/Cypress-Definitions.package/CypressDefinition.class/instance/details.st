accessing
details

	| stream |
	stream := WriteStreamPortable on: (String new: 100).
	self printDetailsOn: stream.
	^stream contents
