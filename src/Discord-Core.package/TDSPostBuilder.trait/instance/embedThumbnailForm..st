protocol - embed
embedThumbnailForm: aForm
	"Set embed thumbnail icon"
	"Set a Form object as a thumbnail icon.
	It adds an attachment and an embed thumbnail icon."
	| fileName |
	self dataPost.
	fileName := self generatePngFileName.
	self fileName: fileName form: aForm.
	self embedThumbnailUrl: 'attachment://', fileName.