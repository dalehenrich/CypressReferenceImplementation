querying
resolveAllWith: aPackageManager
  "Answer a sorted collection of all resolved references within aGofer."

  ^ aPackageManager allResolvedPackageReferences
    select: [ :each | self matches: each ]
