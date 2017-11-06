parsing
urlClassForScheme: scheme
	| allSubclasses |
	allSubclasses := self userId = System myUserProfile userId
		ifTrue: [ ClassOrganizer new allSubclassesOf: self ]
		ifFalse: [ (ClassOrganizer newWithRoot: self forUserId: self userId) allSubclassesOf: self ].
	^allSubclasses detect: [:urlClass | urlClass schemeName = scheme]
		ifNone: [CypressGenericUrl]
