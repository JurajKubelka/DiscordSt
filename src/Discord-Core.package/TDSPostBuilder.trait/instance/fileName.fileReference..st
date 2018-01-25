protocol - attachment
fileName: aString fileReference: aFileReference 
	"Add a file contents as an attachment."
	| mimeType size fileStream entity mimePart |
	mimeType := ZnMimeType forFilenameExtension: (ZnFileSystemUtils extensionFor: aFileReference).
	fileStream := ZnFileSystemUtils oldFileStreamFor: aFileReference.
	mimeType isBinary ifTrue: [ fileStream binary ].
	size := ZnFileSystemUtils fileSizeFor: aFileReference.
	(entity := ZnStreamingEntity type: mimeType length: size)
		stream: fileStream.
	mimePart := ZnMimePart fieldName: aString fileName: aString entity: entity.
	self dataPost addMimePart: mimePart.