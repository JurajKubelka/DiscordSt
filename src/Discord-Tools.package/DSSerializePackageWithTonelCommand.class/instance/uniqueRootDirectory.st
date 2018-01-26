private
uniqueRootDirectory
	| existingFileNames |
	existingFileNames := (FileLocator temp children) collect: #basename.
	^ FileLocator temp / (DSGenerateFileNameCommand new 
			extension: '';
			existingFileNames: existingFileNames;
			execute;
			fileName).