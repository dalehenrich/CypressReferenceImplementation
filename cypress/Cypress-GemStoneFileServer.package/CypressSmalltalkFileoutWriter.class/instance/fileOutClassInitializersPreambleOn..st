writing - private
fileOutClassInitializersPreambleOn: aStream

	self writeChunk: '" Class initializers "' on: aStream.
	aStream
		lf;
		lf
