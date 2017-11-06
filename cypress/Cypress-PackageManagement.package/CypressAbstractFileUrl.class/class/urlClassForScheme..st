parsing
urlClassForScheme: scheme

	scheme isNil ifTrue: [^CypressFileUrl].
	^super urlClassForScheme: scheme
