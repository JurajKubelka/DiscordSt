protocol - embed
embedImageForm: aForm
	"Set a Form object as an image.
	It adds an attachment and an embed image."
	| fileName |
	self dataPost.
	fileName := self generatePngFileName.
	self fileName: fileName form: aForm.
	self embedImageUrl: 'attachment://', fileName.