Accessing - private
findPackagesEclipsedBy: aKnownPackageInformation

	^self packageInformationList select: 
			[:each |
			aKnownPackageInformation name ~= each name and: 
					[(each name indexOfSubCollection: aKnownPackageInformation name , '-') = 1]]
