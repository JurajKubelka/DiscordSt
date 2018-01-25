running
tearDown
	super tearDown.
	zipFile ifNotNil: #ensureDelete.