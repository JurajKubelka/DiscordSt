protocol - embed
embedForm: aForm
	"Set a Form object as an image.
	It adds an attachment and an embed image."
	| fileName |
	self dataPost.
	fileName := DSGenerateFileNameCommand new
		extension: '.png';
		existingFileNames: self fileNames;
		execute;
		fileName.
	self fileName: fileName form: aForm.
	self embedImageUrl: 'attachment://', fileName.