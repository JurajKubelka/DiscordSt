protocol - embed
embedFooterIconForm: aForm
	"Set embed footer icon"
	"Set a Form object as an image.
	It adds an attachment and an embed footer icon."
	| fileName |
	self dataPost.
	fileName := self generatePngFileName.
	self fileName: fileName form: aForm.
	self embedFooterIconUrl: 'attachment://', fileName.