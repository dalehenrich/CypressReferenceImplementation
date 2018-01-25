Class {
	#name : 'RwSymbolDictionaryTest',
	#superclass : 'TestCase',
	#category : 'Rowan-Tests'
}

{ #category : 'private' }
RwSymbolDictionaryTest >> _applyBenignPropertiesTo: existingClass [

	"benign properties are properties that do not cause a new class version or modify class variables"

	| newClass |
	newClass := existingClass superclass
		subclass: existingClass name
		instVarNames: #()
		classVars: #()
		classInstVars: #()
		poolDictionaries: #()
		inDictionary: nil
		newVersionOf: existingClass
		description: ''
		options: #().
	self assert: newClass == existingClass.	"not supposed to create a new class version"
	^ newClass
]

{ #category : 'private' }
RwSymbolDictionaryTest >> _applyClassNewVersionChangesTo: existingClass [

	"benign properties are properties that do not cause a new class version or modify class variables"

	| newClass superclass |
	superclass := System myUserProfile objectNamed: 'Association'.
	newClass := superclass
		subclass: existingClass name
		instVarNames: #('ivar1')
		classVars: #()
		classInstVars: #()
		poolDictionaries: #()
		inDictionary: nil
		newVersionOf: existingClass
		description: ''
		options: #().
	self assert: newClass ~~ existingClass.	"supposed to create a new class version"
	^ newClass
]

{ #category : 'private' }
RwSymbolDictionaryTest >> _applyClassVariableChangeTo: existingClass [

	"benign properties are properties that do not cause a new class version or modify class variables"

	| newClass |
	newClass := existingClass superclass
		subclass: existingClass name
		instVarNames: #()
		classVars: #('ClassVar1')
		classInstVars: #()
		poolDictionaries: #()
		inDictionary: nil
		newVersionOf: existingClass
		description: ''
		options: #().
	self assert: newClass == existingClass.	"not supposed to create a new class version"
	^ newClass
]

{ #category : 'private' }
RwSymbolDictionaryTest >> _compileMethodIn: behavior source: sourceString dictionaries: symbolList [

	^ behavior
		compileMethod: sourceString
		dictionaries: symbolList
		category: nil
		intoMethodDict: false
		intoCategories: nil
		intoPragmas: nil
		environmentId: 0
]

{ #category : 'private' }
RwSymbolDictionaryTest >> _createClassNamed: className superclassName: superclassName [

	| superclass |
	superclass := System myUserProfile objectNamed: superclassName.
	^ superclass
		subclass: className
		instVarNames: #()
		classVars: #()
		classInstVars: #()
		poolDictionaries: #()
		inDictionary: nil
		newVersionOf: nil
		description: ''
		options: #()
]

{ #category : 'private' }
RwSymbolDictionaryTest >> _newOrExistingPackageSymbolDictionaryNamed: dictName [
	| symbolName session symbolList association |
	symbolName := dictName asSymbol.
	session := GsCurrentSession currentSession.
	symbolList := session symbolList.
	^ symbolList
		detect: [ :each | (each at: symbolName ifAbsent: [ nil ]) == each ]
		ifNone: [ 
			| newDict |
			newDict := RwPackageSymbolDictionary new
				name: symbolName;
				objectSecurityPolicy: symbolList objectSecurityPolicy;
				yourself.
			symbolList addLast: newDict.
			session userProfile symbolList addLast: newDict.
			newDict ]
]

{ #category : 'running' }
RwSymbolDictionaryTest >> setUp [

	"Remove the CypressTestData symbol dictionary, if present --- gets persistent and session symbol list"

	| user symList dict index |
	user := System myUserProfile.
	symList := user symbolList.

	dict := symList objectNamed: #'CypressTestData'.
	dict
		ifNotNil: [ 
			index := symList indexOf: dict.
			index > 0
				ifTrue: [ user removeDictionaryAt: index ] ]
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testClassAdditionPatch [

	"RwGsClassAdditionPatch>>installClassInSystem"

	"add a packaged class to a RwPackageSymbolDictionary"

	| dict class assoc packagName className testClass |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packagName := 'TestSymbolDictPackage'.

	dict addClassAssociation: assoc toPackageNamed: packagName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testClassDeletionPatch [

	"RwGsClassDeletionPatch>>deleteClassFromSystem"

	"add a packaged class to a RwPackageSymbolDictionary, then delete it"

	| dict class assoc packagName className testClass |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packagName := 'TestSymbolDictPackage'.

	dict addClassAssociation: assoc toPackageNamed: packagName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class.

	dict deleteClassFromPackage: class.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass isNil
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testClassPropertiesPatch [

	"RwGsClassPropertiesPatch>>installPropertiesPatchFor:"

	"add a packaged class to a RwPackageSymbolDictionary, then update properties (non-class version/class variable properties)"

	| dict class assoc packageName compiledMethod className testClass newClass |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packageName := 'TestSymbolDictPackage'.
	dict addClassAssociation: assoc toPackageNamed: packageName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class.

	newClass := self _applyBenignPropertiesTo: class.
	dict updateClassProperties: newClass.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testClassVariableChangePatch [

	"RwGsClassPropertiesPatch>>installPropertiesPatchFor:"

	"add a packaged class to a RwPackageSymbolDictionary, then update class variable properties"

	| dict class assoc packagName className testClass newClass |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packagName := 'TestSymbolDictPackage'.

	dict addClassAssociation: assoc toPackageNamed: packagName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class.

	newClass := self _applyClassVariableChangeTo: class.
	dict updateClassProperties: newClass.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testClassVersioningPatch [

	"RwGsClassPropertiesPatch>>installPropertiesPatchFor:"

	"add a packaged class to a RwPackageSymbolDictionary, then apply some new version inducing class changes"

	| dict class assoc packagName className testClass newClass |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packagName := 'TestSymbolDictPackage'.

	dict addClassAssociation: assoc toPackageNamed: packagName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class.

	newClass := self _applyClassNewVersionChangesTo: class.
	dict addNewClassVersionToAssociation: newClass.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass ~~ class.
	self assert: testClass == newClass
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testMethodAdditionPatch [

	"RwGsMethodAdditionPatch>>installMethod"

	"add a packaged class to a RwPackageSymbolDictionary, then add a new method."

	| dict class assoc packageName compiledMethod className testClass testInstance |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packageName := 'TestSymbolDictPackage'.
	dict addClassAssociation: assoc toPackageNamed: packageName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class.

	compiledMethod := self
		_compileMethodIn: class
		source: 'foo ^ ''foo'''
		dictionaries: GsCurrentSession currentSession symbolList.

	dict
		addNewCompiledMethod: compiledMethod
		into: class
		protocol: 'accessing'
		toPackageNamed: packageName.

	testInstance := testClass new.
	self assert: testInstance foo = 'foo'
]

{ #category : 'tests' }
RwSymbolDictionaryTest >> testMethodDeletionPatch [

	"RwGsMethodDeletionPatch>>deleteMethodNewClasses:andExistingClasses:"

	"add a packaged class to a RwPackageSymbolDictionary, add a new method, then delete it."

	| dict class assoc packageName compiledMethod className testClass testInstance |
	className := 'TestSymbolDictClass'.
	class := self _createClassNamed: className superclassName: 'Object'.
	dict := self _newOrExistingPackageSymbolDictionaryNamed: #'CypressTestData'.
	assoc := SymbolAssociation newWithKey: class name asSymbol value: class.
	packageName := 'TestSymbolDictPackage'.
	dict addClassAssociation: assoc toPackageNamed: packageName.

	testClass := System myUserProfile symbolList objectNamed: className.
	self assert: testClass == class.
	testInstance := testClass new.
	self should: [ testInstance foo = 'foo' ] raise: MessageNotUnderstood.

	compiledMethod := self
		_compileMethodIn: class
		source: 'foo ^ ''foo'''
		dictionaries: GsCurrentSession currentSession symbolList.

	dict
		addNewCompiledMethod: compiledMethod
		into: class
		protocol: 'accessing'
		toPackageNamed: packageName.

	self assert: testInstance foo = 'foo'.

	dict deleteCompiledMethod: compiledMethod from: class.

	self should: [ testInstance foo = 'foo' ] raise: MessageNotUnderstood
]