unloading
unloadSnapshot: aSnapshot
  |  patch |
  patch := CypressSnapshot empty patchRelativeToBase: aSnapshot.
  patch applyTo: self
