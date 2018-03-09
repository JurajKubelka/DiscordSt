running
tearDown
	super tearDown.
	zipFile ifNotNil: #ensureDelete.
	rootDir ensureDeleteAll 