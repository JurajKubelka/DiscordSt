convenience - embed
embedForm: aForm 
	| fileName |
	fileName := DSGenerateFileNameCommand new
		extension: '.png';
		existingFileNames: self fileNames;
		execute;
		fileName.
	self addFileName: fileName form: aForm.
	self embedImageUrl: 'attachment://', fileName.