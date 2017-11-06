writing - private
writeChunk: aString on: aStream

	aString do: 
			[:each |
			aStream nextPut: each.
			each = $! ifTrue: [aStream nextPut: each]].
	aStream nextPut: $!
