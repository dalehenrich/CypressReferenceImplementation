writing - private
fileOutPreambleType: aString for: classStructure on: aStream

	self writeChunk: '" ' , aString , ' for ' , classStructure name , '"'
		on: aStream.
	aStream
		lf;
		lf
