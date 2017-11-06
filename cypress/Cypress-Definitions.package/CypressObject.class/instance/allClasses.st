accessing
allClasses

	| classes |
	classes := Array new.
	System myUserProfile symbolList
		do: [:dict | classes addAll: (dict select: [:each | each isBehavior])].
	^classes
