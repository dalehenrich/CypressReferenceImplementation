initializing - private
initializeCreationOn: aUrl alias: aString

	self
		initializeUrl: aUrl andAlias: aString;
		alias: aString;
		writePropertiesFile
