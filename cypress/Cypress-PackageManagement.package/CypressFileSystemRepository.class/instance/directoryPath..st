initializing - private
directoryPath: aString
  | delim |
  delim := self fileUtils pathNameDelimiter.
  aString last = delim last
    ifTrue: [ directoryPath := aString ]
    ifFalse: [ directoryPath := aString , delim ]
