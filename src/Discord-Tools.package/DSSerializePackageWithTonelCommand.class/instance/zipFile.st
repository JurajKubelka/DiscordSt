accessing
zipFile
	| existingFileNames zipFile |
	existingFileNames := (FileLocator temp allChildrenMatching: '*.zip') collect: #basename.
	zipFile := DSGenerateFileNameCommand new 
			extension: '.zip';
			existingFileNames: existingFileNames;
			execute;
			fileName.
	^ DSCompressDirectoryWithZipCommand new
		directory: self directory;
		zipFile: FileLocator temp / zipFile;
		execute;
		zipFile