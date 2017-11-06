*Cypress-Comparison
comparePackagesFrom: someCypressPackageInformations

	| packageNames savedLocation comparator |
	packageNames := someCypressPackageInformations collect: 
					[:each |
					savedLocation := each savedLocation.
					each name].
	comparator := CypressPackageComparator new.
	comparator comparingPackages: packageNames fromDirectory: savedLocation.
	^comparator getDifferences
