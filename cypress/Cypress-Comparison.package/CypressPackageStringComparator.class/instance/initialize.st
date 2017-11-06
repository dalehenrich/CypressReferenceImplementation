initializing - private
initialize
  directoryPackageMap := Dictionary new.
  diskTimestamps := Dictionary new.
  diskSnapshots := Dictionary new.
  imageSnapshots := Dictionary new.
  snapshotDifferences := Dictionary new
    at: 'operations' put: Dictionary new;
    yourself
