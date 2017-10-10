"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: testing
"
testMatchingSchemesToSubclasses

	{ { nil. CypressGenericUrl }. "Assume HTTP by default (i.e. when no scheme is provided)"
	{ 'isbn'. CypressGenericUrl }. "Handle unknown Url types with GenericUrl"
	{ 'http'. CypressHttpUrl }.
	{ 'https'. CypressHttpsUrl }.
	{ 'file'. CypressFileUrl }.
	{ 'mailto'. CypressMailtoUrl }.
	{ 'browser'. CypressBrowserUrl } } do: [ :pair | | schemeString urlClassToUse |
		schemeString := pair first.
		urlClassToUse := pair at: 2.
		self assert: (CypressUrl urlClassForScheme: schemeString) equals: urlClassToUse ].
