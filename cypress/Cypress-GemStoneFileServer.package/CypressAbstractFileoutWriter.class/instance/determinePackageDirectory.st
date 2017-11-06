private
determinePackageDirectory

	^self fileUtils ensureDirectoryExists: self repository directoryPath
