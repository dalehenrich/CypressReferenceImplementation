"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: updating
"
refresh

	self isKnown ifFalse: [^self].
	self
		updateImageDefinitions;
		updateSavedDefinitions;
		updateChangesCount.
