accessing
classesInDependencyOrder

	^(CypressGsGeneralDependencySorter
		on: self packageStructure classes
		dependsOn: [:candidate | candidate superclassName]
		dependent: [:candidate | candidate className]) inOrder
