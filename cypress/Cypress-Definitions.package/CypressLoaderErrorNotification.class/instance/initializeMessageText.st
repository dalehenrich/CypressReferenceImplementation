initializing - private
initializeMessageText

	| stream |
	stream := WriteStreamPortable on: (String new: 100).
	stream
		nextPutAll: self patchOperation printString;
		nextPutAll: ' failed because ';
		nextPutAll: self exception printString.
	messageText := stream contents
