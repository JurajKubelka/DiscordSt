accessing
zipFileInDirectory: aFileLocator 
	"Define any random and unique ZIP file name that should be located in the given directory."
	| existingFileNames |
	self assert: [ aFileLocator isDirectory ] description: 'Parameter should be a directory'.
	self assert: [ aFileLocator exists ] description: 'Parameter should be an existing directory'.
	existingFileNames := (aFileLocator directoriesMatching: '*.zip') collect: #basename.
	self zipFile: aFileLocator / (DSGenerateFileNameCommand new 
			extension: '.zip';
			existingFileNames: existingFileNames;
			execute;
			fileName).