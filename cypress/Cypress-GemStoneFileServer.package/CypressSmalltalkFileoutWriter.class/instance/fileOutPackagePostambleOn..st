writing - private
fileOutPackagePostambleOn: aStream

	aStream
		lf;
		lf.
	self writeChunk: '" End of Package: ' , self packageName , '"' on: aStream.
	aStream
		lf;
		lf;
		lf
