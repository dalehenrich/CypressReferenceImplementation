"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testCombineWithRelative
	#(#('http://www.rfc1149.net/' 'foo.html' 'http://www.rfc1149.net/foo.html') #('http://www.rfc1149.net/index.html' 'foo.html' 'http://www.rfc1149.net/foo.html') #('http://www.rfc1149.net/devel/' '../sam/' 'http://www.rfc1149.net/sam/') #('http://www.rfc1149.net/devel/index.html' '../sam/' 'http://www.rfc1149.net/sam/')) 
		do: [:a | self assert: (Url combine: a first withRelative: (a at: 2)) = (a at: 3)]