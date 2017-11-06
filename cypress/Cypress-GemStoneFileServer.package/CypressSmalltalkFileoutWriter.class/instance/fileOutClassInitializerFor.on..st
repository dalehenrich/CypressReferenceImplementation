writing - private
fileOutClassInitializerFor: classStructure on: aStream

	self writeChunk: classStructure className , ' initialize.' on: aStream.
	aStream lf
