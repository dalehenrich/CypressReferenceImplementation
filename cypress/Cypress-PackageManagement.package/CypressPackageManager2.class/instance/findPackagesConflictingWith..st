Accessing - private
findPackagesConflictingWith: aKnownPackageInformation

	^self packageInformationList select: 
			[:each |
			aKnownPackageInformation name ~= each name and: 
					[(aKnownPackageInformation name indexOfSubCollection: each name , '-') = 1]]
