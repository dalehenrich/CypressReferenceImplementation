git commands
runGitCommand: argsArray in: gitRootPath

	| stream |
	stream := WriteStreamPortable on: (String new: 100).
	stream nextPutAll: 'cd ' , gitRootPath , '; git '.
	argsArray do: 
			[:arg |
			stream
				space;
				nextPutAll: arg].
	^self performOnServer: stream contents
