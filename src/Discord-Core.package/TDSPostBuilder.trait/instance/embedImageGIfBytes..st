protocol - embed
embedImageGIfBytes: bytes
	"Adds bytes as an attachment and an embed image."
	| fileName |
	self dataPost.
	fileName := self generateGifFileName.
	self fileName: fileName gifBytes: bytes.
	self embedImageUrl: 'attachment://', fileName.