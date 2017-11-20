initialization
setFileName
	"Remove unsafe characters and limit the filename lenght."
	self fileName: (DSGenerateFileNameCommand new
		extension: '.playground.fuel';
		execute;
		fileName)