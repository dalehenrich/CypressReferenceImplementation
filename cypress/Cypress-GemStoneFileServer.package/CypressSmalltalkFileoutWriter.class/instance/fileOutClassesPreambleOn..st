writing - private
fileOutClassesPreambleOn: aStream

	self writeChunk: '" Class Declarations "' on: aStream.
	aStream
		lf;
		lf
