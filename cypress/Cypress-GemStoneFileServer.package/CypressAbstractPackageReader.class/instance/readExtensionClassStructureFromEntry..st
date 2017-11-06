reading
readExtensionClassStructureFromEntry: classEntry

	| classPropertiesDict entries classStructure |
	entries := self fileUtils directoryEntriesFrom: classEntry.
	classPropertiesDict := self
				readClassPropertiesFromDirectoryEntries: entries.
	classStructure := self classStructureFrom: classPropertiesDict.
	self readMethodStructureFor: classStructure in: entries.
	^classStructure
