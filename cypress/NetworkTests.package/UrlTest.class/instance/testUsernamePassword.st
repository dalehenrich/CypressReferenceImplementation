"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testUsernamePassword
	"basic case with a username+password specified"

	url := CypressUrl absoluteFromText: 'http://user:pword@someserver.blah:8000/root/index.html'.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"basic case for a relative url"
	baseUrl := CypressUrl absoluteFromText: 'http://anotherserver.blah:9999/somedir/someotherdir/stuff/'.
	url := baseUrl newFromRelativeText: 'http://user:pword@someserver.blah:8000/root/index.html'.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"a true relative test that should keep the username and password from the base URL"
	baseUrl := CypressUrl absoluteFromText: 'http://user:pword@someserver.blah:8000/root/index.html'.
	url :=  baseUrl newFromRelativeText: '/anotherdir/stuff/'.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'anotherdir' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"just a username specified"
	url :=  CypressUrl absoluteFromText: 'http://user@someserver.blah:8000/root/index.html'.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password isNil ].	"the port is not specified"
	url :=  CypressUrl absoluteFromText: 'http://user:pword@someserver.blah/root/index.html'.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port isNil ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"neither a path nor a port is specified"
	url :=  CypressUrl absoluteFromText: 'http://user:pword@someserver.blah'.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port isNil ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"relative URL where the username+password should be forgotten"
	baseUrl :=  CypressUrl absoluteFromText: 'http://user:pword@someserver.blah'.
	url := baseUrl newFromRelativeText: 'http://anotherserver.blah'.
	self should: [ url username isNil ].
	self should: [ url password isNil ]
