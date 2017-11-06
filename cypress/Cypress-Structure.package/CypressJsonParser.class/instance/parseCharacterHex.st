parsing-internal
parseCharacterHex
  | value |
  value := self parseCharacterHexDigit.
  3 timesRepeat: [ value := (value bitShift: 4) + self parseCharacterHexDigit ].
  ^ Character codePoint: value
