miscellany
elementsInBoth: collection1 and: collection2
	"Set intersection generalized to any collections."

	| temporarySet |
	temporarySet := collection2 asSet.
	^collection1 select: [:each | temporarySet includes: each]
