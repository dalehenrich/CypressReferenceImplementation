utilities
deleteAll: aDirectory
  "Delete all the files and directories under the named directory.
	 Ensure we don't try to recursively delete . or .."

  self deleteAll: aDirectory rejecting: [ :filename | false ]
