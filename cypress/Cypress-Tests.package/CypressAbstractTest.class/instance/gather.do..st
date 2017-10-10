"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private
"
gather: aCollection do: aBlock
  | res |
  res := {}.
  aCollection do: [ :ea | res addAll: (aBlock value: ea) ].
  ^ res
