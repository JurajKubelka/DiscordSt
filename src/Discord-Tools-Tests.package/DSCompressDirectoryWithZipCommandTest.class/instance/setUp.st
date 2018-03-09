running
setUp
	super setUp.
	rootDir := FileReference newTempFilePrefix: 'discordst-' suffix: '-test-case-dir'.
	rootDir ensureCreateDirectory.