accessing
externalRequirements

	| unloaded providedByUnloaded |
	unloaded := self itemsWithMissingRequirements.
	providedByUnloaded := (self collection: unloaded
				gather: [:e | e provisions]) asSet.
	^self required keys
		reject: [:globalName | providedByUnloaded includes: globalName]
