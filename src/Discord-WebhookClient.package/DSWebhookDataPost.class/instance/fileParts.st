accessing
fileParts
	"Get collection of ZnFilePart objects."
	^ fileParts ifNil: [ fileParts := OrderedCollection new ]