"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: initialization
"
initializeForName: aName

	super initializeForName: aName.
	PackageRegistry at: aName put: self