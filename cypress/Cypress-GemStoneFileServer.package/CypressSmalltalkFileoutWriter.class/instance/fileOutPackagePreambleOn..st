writing - private
fileOutPackagePreambleOn: aStream

	self writeChunk: '" Package: ' , self packageName , '"' on: aStream.
	aStream
		lf;
		lf;
		lf
