reading
isPropertiesFileDirectoryEntry: entry

	^self propertiesFileNameExtensions
		anySatisfy: [:each | self string: entry endsWith: '/properties' , each]
