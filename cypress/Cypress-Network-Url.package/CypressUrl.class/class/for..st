instance creation
for: aString
	"Return a URL from a string and handle
	a String without a scheme as a HttpUrl."

	^self absoluteFromText: aString
