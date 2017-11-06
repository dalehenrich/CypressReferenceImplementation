writing - private
fileOutExtensionsPreambleOn: aStream

	self writeChunk: '" Class Extensions "' on: aStream.
	aStream
		lf;
		lf
