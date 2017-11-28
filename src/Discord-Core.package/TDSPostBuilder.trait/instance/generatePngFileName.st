private
generatePngFileName
	"Return a unique file name with PNG extention."
	<return: #String>
	^ DSGenerateFileNameCommand new
		extension: '.png';
		existingFileNames: self post fileNames;
		execute;
		fileName.