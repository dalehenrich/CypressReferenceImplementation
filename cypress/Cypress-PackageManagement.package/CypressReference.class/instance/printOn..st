printing
printOn: aStream
  aStream
    nextPutAll: self class name;
    nextPutAll: ' name: ';
    print: self name
