"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testPatchOperationEquality

	| className modification removal addition |
	className := 'CypressMockBasic'.
	modification := CypressModification 
			of: (CypressMethodDefinition
          			className: className
        			classIsMeta: false
        			selector: 'name:'
        			category: 'accessing'
        			source:'name: aString
	name := aString') 
			to: (CypressMethodDefinition
          			className: className
        			classIsMeta: false
        			selector: 'name:'
        			category: 'accessing'
        			source:'name: aString
	"changed method"
	name := aString').
	self assert: modification equals: modification.
	removal := CypressRemoval 
			of: (CypressMethodDefinition
          			className: className
        			classIsMeta: false
        			selector: 'extra'
        			category: 'accessing'
        			source:'extra
	"extra method"').
	self assert: removal equals: removal.
	addition := CypressAddition
			of: (CypressMethodDefinition
          			className: className
        			classIsMeta: false
        			selector: 'extra'
        			category: 'accessing'
        			source:'extra
	"extra method"').
	self assert: addition equals: addition.
