accessing
zipFile
	^ DSCompressDirectoryWithZipCommand new
		directory: self directory;
		zipFileInTempDirectory;
		execute;
		zipFile