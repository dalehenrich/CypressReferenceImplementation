initializing - private
initializeConflictingPackageNames

	| conflictingPackages |
	conflictingPackages := Dictionary new.
	packageInformationList do: 
			[:each |
			conflictingPackages at: each
				put: (knownPackages keys select: 
							[:knownName |
							knownName ~= each name
								and: [(knownName indexOfSubCollection: each name , '-') = 1]])].
	conflictingPackages := conflictingPackages reject: [:each | each isEmpty].
	conflictingPackages
		keysAndValuesDo: [:package :conflicts | package beConflictedWith: conflicts]
