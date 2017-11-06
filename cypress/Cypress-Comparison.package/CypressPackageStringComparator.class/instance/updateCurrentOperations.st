comparing - private
updateCurrentOperations
  self
    currentOperations:
      ((snapshotDifferences at: 'operations')
        at: currentPackageName
        ifAbsentPut: [ OrderedCollection new ])
