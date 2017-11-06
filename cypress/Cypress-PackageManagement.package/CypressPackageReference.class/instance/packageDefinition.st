accessing
packageDefinition
  "For in-image packages, only the base package name is used (no branch)"

  ^ CypressPackageDefinition named: self packageName
