as yet unclassified
zipFile
	^ DSCompressDirectoryWithZipCommand new
		directory: self directory;
		zipFileInTempDirectory;
		execute;
		zipFile