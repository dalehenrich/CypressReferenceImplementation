private
anyElementOf: aCollection ifEmpty: aBlock

	aCollection do: [:each | ^each].
	^aBlock value
