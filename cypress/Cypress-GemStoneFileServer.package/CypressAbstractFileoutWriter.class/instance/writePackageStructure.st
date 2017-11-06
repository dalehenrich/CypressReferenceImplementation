writing
writePackageStructure

	CypressFileUtilities current
		writeStreamFor: self packageStructure packageName
				, self packageNameExtension
		in: self packageDirectory
		do: [:fileStream | self fileOutPackageOn: fileStream]
