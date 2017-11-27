enumerating
fileNames
	"Return existing file names of FilePart objects."
	<return: #Array of: #String>
	^ self mimeParts collect: #fileName as: Array