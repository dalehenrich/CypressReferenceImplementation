"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: as yet unclassified
"
testEncodeForHTTP

	| strm |
        strm := WriteStream on: String new.
        CypressUrl writeWithHttpEscapes: 'aa aa éé aa aa' on: strm.
	self assert: strm contents = 'aa%20aa%20%C3%A9%C3%A9%20aa%20aa'
