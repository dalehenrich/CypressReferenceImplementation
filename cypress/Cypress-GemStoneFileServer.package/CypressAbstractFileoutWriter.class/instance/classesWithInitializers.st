accessing
classesWithInitializers

	^self classesInDependencyOrder
		select: [:each | each classMethods anySatisfy: [:method | method selector = 'initialize']]
