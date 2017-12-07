protocol - attachment
fileReference: aFileReference 
	"Add a file contents as an attachment."
	| baseName |
	baseName := ZnFileSystemUtils baseNameFor: aFileReference.
	self fileName: baseName fileReference: aFileReference