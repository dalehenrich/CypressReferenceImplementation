"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testUsernamePasswordPrinting

	#(	'http://user:pword@someserver.blah:8000/root/index.html'
		'http://user@someserver.blah:8000/root/index.html' 
		'http://user:pword@someserver.blah/root/index.html'
	) do: [ :urlText |
		self should: [ urlText = urlText asUrl asString ] ].

