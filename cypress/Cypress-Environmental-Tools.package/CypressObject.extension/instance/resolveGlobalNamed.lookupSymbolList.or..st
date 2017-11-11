"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: *cypress-environmental-tools
"
resolveGlobalNamed: aString lookupSymbolList: lookupSymbolList or: aBlock
  ^ ((lookupSymbolList resolveSymbol: aString) ifNil: [ ^ aBlock value ]) value