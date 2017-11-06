miscellany
elementsIn: sourceCollection butNotIn: exclusionCollection

	| exclusionSet |
	exclusionSet := exclusionCollection asSet.
	^sourceCollection reject: [:each | exclusionSet includes: each]
