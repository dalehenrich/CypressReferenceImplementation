"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: parsing
"
urlClassForScheme: scheme

	scheme isNil ifTrue: [^FileUrl].
	^super urlClassForScheme: scheme
