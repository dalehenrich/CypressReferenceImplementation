writing
writePackageStructure: aPackageStructure

	self
		packageStructure: aPackageStructure;
		packageDirectory: self determinePackageDirectory;
		writePackageStructure
