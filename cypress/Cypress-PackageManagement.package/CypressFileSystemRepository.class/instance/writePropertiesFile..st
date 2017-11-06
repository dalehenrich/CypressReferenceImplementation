writing
writePropertiesFile: fileName

	self fileUtils
		writeStreamFor: fileName
		in: self directoryPath
		do: [:fileStream | properties _writeCypressJsonOn: fileStream]
