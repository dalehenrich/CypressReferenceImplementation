"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: testing
"
testFromFileNameOrUrlString

	url := CypressUrl absoluteFromFileNameOrUrlString: 'asdf'.
	self assert: url schemeName = 'file'.
	self assert: url fragment isNil.
	self assert: url class = CypressFileUrl.

	url := CypressUrl absoluteFromFileNameOrUrlString: 'http://209.143.91.36/super/SuperSwikiProj/AAEmptyTest.001.pr'.
	self assert: url schemeName = 'http'.
	self assert: url fragment isNil.
	self assert: url class = CypressHttpUrl.
