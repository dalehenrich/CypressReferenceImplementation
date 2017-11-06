private
addExternalProvisions: aCollection

	(self elementsInBoth: aCollection and: self externalRequirements)
		do: [:globalName | self addProvision: globalName]
