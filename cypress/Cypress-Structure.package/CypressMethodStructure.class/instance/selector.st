accessing
selector

	| stream |
	stream := WriteStreamPortable on: (String new: 100).
	self name
		do: [:chara | stream nextPut: (chara = $. ifTrue: [$:] ifFalse: [chara])].
	^stream contents
