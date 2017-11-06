writing - private
fileOutClassImplementationsOn: aStream

	self
		fileOut: 'Class Implementation'
		implementationsFrom: self classesInDependencyOrder
		on: aStream
