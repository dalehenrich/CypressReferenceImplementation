writing - private
fileOut: aString methodsPreambleFor: classStructure on: aStream

	self
		writeChunk: '" ------------------- ' , aString , ' methods for '
				, classStructure name , '"'
		on: aStream.
	aStream
		lf;
		lf
