initializing - private
initializeMessageText

	| stream |
	stream := WriteStreamPortable on: (String new: 100).
	stream nextPutAll: 'Missing classes:'.
	self requirementsMap keysAndValuesDo: 
			[:className :definitions |
			stream
				space;
				nextPutAll: className printString , '(' , definitions size printString
							, ')'].
	messageText := stream contents
