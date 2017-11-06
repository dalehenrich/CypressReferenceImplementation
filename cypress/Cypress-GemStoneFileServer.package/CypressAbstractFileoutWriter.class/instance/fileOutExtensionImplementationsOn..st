writing - private
fileOutExtensionImplementationsOn: aStream
  | sortedExtensions |
  sortedExtensions := self extensions
    asSortedCollection: [ :a :b | a className <= b className ].
  self
    fileOut: 'Class Extension'
    implementationsFrom: sortedExtensions
    on: aStream
