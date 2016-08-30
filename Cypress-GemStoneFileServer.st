SystemOrganization addCategory: 'Cypress-GemStoneFileServer'!

Object subclass: #CypressAbstractPackageFiler
	instanceVariableNames: 'repository packageDirectory packageStructure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressAbstractPackageFiler class methodsFor: 'instance creation' stamp: ''!
forRepository: aCypressFileSystemRepository

!CypressAbstractPackageFiler methodsFor: 'private' stamp: ''!
fileUtils

!CypressAbstractPackageFiler methodsFor: 'initializing - private' stamp: ''!
initializeForRepository: aCypressFileSystemRepository

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
packageDirectory

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
packageDirectory: aDirectory

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
packageStructure

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
packageStructure: aPackageStructure

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
propertiesFileNameExtension

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
propertiesFileNameExtensions

!CypressAbstractPackageFiler methodsFor: 'accessing' stamp: ''!
repository

CypressAbstractPackageFiler subclass: #CypressAbstractPackageReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressAbstractPackageReader methodsFor: 'private' stamp: ''!
classStructureFrom: classPropertiesDict

!CypressAbstractPackageReader methodsFor: 'private' stamp: ''!
classStructureFrom: classPropertiesDict comment: classComment

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
isPropertiesFileDirectoryEntry: entry

!CypressAbstractPackageReader methodsFor: 'accessing' stamp: ''!
packageExtension

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readClassCommentFromDirectoryEntries: entries

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readClassPropertiesFromDirectoryEntries: entries

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readClassStructureFromEntry: classEntry

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readCypressFormatMethodStructureFrom: fileStream intoClassStructure: classStructure meta: isMeta methods: methods

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readExtensionClassStructureFromEntry: classEntry

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readFileTreeFormatMethodStructureFrom: fileStream intoClassStructure: classStructure meta: isMeta methods: methods

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readMethodStructureFor: classStructure in: entries

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readMethodStructureFrom: fileStream intoClassStructure: classStructure meta: isMeta methods: methods

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readPackageStructure

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readPackageStructureForPackageNamed: packageName

!CypressAbstractPackageReader methodsFor: 'reading' stamp: ''!
readPropertiesFile: entry

CypressAbstractPackageReader subclass: #CypressFileTreeFormatPackageReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressFileTreeFormatPackageReader methodsFor: 'accessing' stamp: ''!
propertiesFileNameExtension

!CypressFileTreeFormatPackageReader methodsFor: 'accessing' stamp: ''!
propertiesFileNameExtensions

!CypressFileTreeFormatPackageReader methodsFor: 'reading' stamp: ''!
readMethodStructureFrom: fileStream intoClassStructure: classStructure meta: isMeta methods: methods

CypressAbstractPackageReader subclass: #CypressFlexiblePackageReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressFlexiblePackageReader methodsFor: 'reading' stamp: ''!
isPropertiesFileDirectoryEntry: entry

!CypressFlexiblePackageReader methodsFor: 'reading' stamp: ''!
readMethodStructureFrom: fileStream intoClassStructure: classStructure meta: isMeta methods: methods

CypressAbstractPackageReader subclass: #CypressPackageReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressPackageReader methodsFor: 'reading' stamp: ''!
readMethodStructureFrom: fileStream intoClassStructure: classStructure meta: isMeta methods: methods

CypressAbstractPackageFiler subclass: #CypressAbstractPackageWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

CypressAbstractPackageWriter class
	instanceVariableNames: 'specials'!

!CypressAbstractPackageWriter class methodsFor: 'initialization' stamp: ''!
initializeSpecials

!CypressAbstractPackageWriter class methodsFor: 'accessing' stamp: ''!
specials

!CypressAbstractPackageWriter methodsFor: 'private' stamp: ''!
determinePackageDirectory

!CypressAbstractPackageWriter methodsFor: 'private' stamp: ''!
directoryForDirectoryNamed: directoryNameOrPath

!CypressAbstractPackageWriter methodsFor: 'private' stamp: ''!
fileNameForSelector: selector

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
removeOldReplacingWithNew

!CypressAbstractPackageWriter methodsFor: 'private' stamp: ''!
subPackageFileDirectoryFor: directoryNameOrPath

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writeClassComment: classStructure on: fileStream

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writeClassStructure: classStructure to: classPath

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writeExtensionClassStructure: classStructure to: classPath

!CypressAbstractPackageWriter methodsFor: 'private' stamp: ''!
writeInDirectoryName: directoryNameOrPath fileName: fileName extension: ext visit: visitBlock

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writeMethodStructure: methodStructure onStream: fileStream

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writeMethodStructure: methodStructure to: methodPath

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writePackageStructure

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writePackageStructure: aPackageStructure

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writePackageStructureClasses: classStructures isClassExtension: isClassExtension

!CypressAbstractPackageWriter methodsFor: 'writing' stamp: ''!
writePropertiesFile

CypressAbstractPackageWriter subclass: #CypressFileTreeFormatPackageWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressFileTreeFormatPackageWriter methodsFor: 'writing' stamp: ''!
writeMethodStructure: methodStructure onStream: fileStream

CypressAbstractPackageWriter subclass: #CypressPackageWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressPackageWriter methodsFor: 'accessing - private' stamp: ''!
methodNoticeLine

!CypressPackageWriter methodsFor: 'writing' stamp: ''!
writeMethodStructure: methodStructure onStream: fileStream

CypressAbstractPackageWriter subclass: #CypressStrictFileTreeFormatDoNothingPackageWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressStrictFileTreeFormatDoNothingPackageWriter methodsFor: 'writing' stamp: ''!
removeOldReplacingWithNew

!CypressStrictFileTreeFormatDoNothingPackageWriter methodsFor: 'writing' stamp: ''!
writePropertiesFile

Object subclass: #CypressFileUtilities
	instanceVariableNames: ''
	classVariableNames: 'Current'
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressFileUtilities class methodsFor: 'accessing' stamp: ''!
current

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
deleteAll: aDirectory

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
directoryEntriesFrom: aDirectory

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
directoryExists: aDirectory

!CypressFileUtilities class methodsFor: 'unknown' stamp: ''!
directoryFileNamesAndContents: aDirectory

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
directoryFromPath: directoryPath relativeTo: aDirectory

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
ensureDirectoryExists: aDirectory

!CypressFileUtilities class methodsFor: 'initializating' stamp: ''!
install

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
localNameFrom: aDirectory

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
pathNameDelimiter

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
readStreamFor: filePath do: aOneArgBlock

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
readStreamFor: filePath in: aDirectory do: aOneArgBlock

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
workingDirectory

!CypressFileUtilities class methodsFor: 'utilities' stamp: ''!
writeStreamFor: filePath in: aDirectory do: aOneArgBlock

CypressFileUtilities subclass: #CypressGemStoneDirectoryUtilities
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Cypress-GemStoneFileServer'!

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
deleteAll: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
directoryEntriesFrom: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
directoryExists: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'unknown' stamp: ''!
directoryFileNamesAndContents: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'unknown' stamp: ''!
directoryFileNamesAndContents: aDirectory into: aDictionary

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
directoryFromPath: directoryPath relativeTo: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
ensureDirectoryExists: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'initializating' stamp: ''!
initialize

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
localNameFrom: aDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
pathNameDelimiter

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
readStreamFor: filePath do: aOneArgBlock

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
readStreamFor: filePath in: aDirectory do: aOneArgBlock

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
workingDirectory

!CypressGemStoneDirectoryUtilities class methodsFor: 'utilities' stamp: ''!
writeStreamFor: filePath in: aDirectory do: aOneArgBlock
CypressGemStoneDirectoryUtilities initialize!