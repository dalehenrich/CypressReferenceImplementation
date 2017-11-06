initializing - private
initializeUrl: aUrl andAlias: aString
  super initializeUrl: aUrl andAlias: aString.
  self initializeRepositoryDirectory.
  self readPropertiesFile.
  self codeFormatProperty: self url codeFormat.
  self strictCodeFormat: self url isStrict.
  self fixupMissingCopyrightProperty.
  self initializeReaderAndWriterClasses
