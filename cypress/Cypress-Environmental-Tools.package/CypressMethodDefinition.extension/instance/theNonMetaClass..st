"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: *cypress-environmental-tools
"
theNonMetaClass: lookupSymbolList
  ^ self
    resolveGlobalNamed: self className
    lookupSymbolList: lookupSymbolList
    or: [  ]