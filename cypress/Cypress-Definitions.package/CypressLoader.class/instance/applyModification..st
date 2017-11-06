applying
applyModification: aCypressPatchOperation
  self additions add: aCypressPatchOperation.
  self obsoletions
    at: aCypressPatchOperation modification description
    put: aCypressPatchOperation obsoletion
