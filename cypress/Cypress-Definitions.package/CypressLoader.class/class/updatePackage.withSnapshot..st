"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: loading
"
updatePackage: aPackage withSnapshot: aSnapshot
  "Answer the loader used to apply the update."

  ^ self
    updatePackage: aPackage
    defaultSymbolDictionaryName: nil
    withSnapshot: aSnapshot
