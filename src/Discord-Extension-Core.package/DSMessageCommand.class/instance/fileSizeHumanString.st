accessing
fileSizeHumanString
	"Return a human readable string of a file size, e.g, 42 bytes, 1 MB."
	^ DSUtility printHumanReadableBytes: self fileSize