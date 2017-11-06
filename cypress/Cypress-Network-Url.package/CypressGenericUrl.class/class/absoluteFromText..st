parsing
absoluteFromText: aString

	| schemeName locator |
	schemeName := CypressUrl schemeNameForString: aString.
	schemeName ifNil: [^self schemeName: 'xnoscheme' locator: aString].
	locator := aString copyFrom: schemeName size + 2 to: aString size.
	^self schemeName: schemeName locator: locator
