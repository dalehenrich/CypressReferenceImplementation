"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: converting
"
normalizeLineEndings: aString
	"Answer a copy of aString with the line endings normalized to
	 correspond to the current platform, regardless of how they were
	 saved. For example, Squeak uses CR and would normalize with
	 #withSqueakLineEndings, for example.

	 GemStone Smalltalk uses the Unix line ending of LF."

	^aString withUnixLineEndings.
