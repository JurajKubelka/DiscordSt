private
generateFileNameWithExtension: extensionString
	"Return a unique file name with an extention, e.g., '.png'."
	<return: #String>
	^ DSGenerateFileNameCommand new
		extension: extensionString;
		existingFileNames: self post fileNames;
		execute;
		fileName.