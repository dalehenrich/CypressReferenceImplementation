"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testUsernamePasswordEncoded2
	"Sometimes, weird usernames or passwords are necessary in applications, and, thus, we might receive them in a Url. The @ and the : ar the kind of critical ones."

	#(      "('user' 'pword' 'host' port 'path')"
	('Stéphane rst Pückler' 'leckerEis' 'cottbus.brandenburg' 80 'mein/Zuhause')
	('Jeannde.d''Arc' 'jaiunesécret' 'orleans' 8080 'une/deux/trois')
	('HaXor@roxor:fnac' 'my~Pa$§wert' 'cbase' 42 'do/not_try')
	) do: [:urlParts | |theUrl|
			theUrl := ('http://', (urlParts at: 1) encodeForHTTP, ':', (urlParts at: 2) encodeForHTTP, '@', (urlParts at: 3), ':', (urlParts at: 4) printString, '/', (urlParts at: 5)) asUrl.
		self assert: (theUrl schemeName = 'http').
		self assert: (theUrl username = (urlParts at: 1)).
		self assert: (theUrl password = (urlParts at: 2)).
		self assert: (theUrl authority = (urlParts at: 3)).
		self assert: (theUrl port = (urlParts at: 4)).
		self assert: theUrl path first = ((urlParts at: 5) copyUpTo: $/ )]