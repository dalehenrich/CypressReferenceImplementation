"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private
"
addAddedClassesToTempSymbols
	"Just need the names for now, they don't need to resolve to anything in particular."

	addedClasses do: [:each | tempSymbols at: each name put: nil]