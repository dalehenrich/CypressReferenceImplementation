writing
writePackagesToDiskFrom: someCypressPackageInformations

	| packageStructure |
	^someCypressPackageInformations do: 
			[:each |
			packageStructure := CypressPackageStructure
						fromPackage: (CypressPackageDefinition named: each name).
			each repository writer writePackageStructure: packageStructure.
			each refresh.
			self saveKnownPackages]
