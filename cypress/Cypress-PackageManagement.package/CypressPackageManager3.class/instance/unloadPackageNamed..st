"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: Unloading
"
unloadPackageNamed: aPackageName
  ^ self unloadPackage: (CypressPackageDefinition named: aPackageName)
