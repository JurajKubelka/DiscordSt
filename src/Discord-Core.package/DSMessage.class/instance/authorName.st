accessing - convenience
authorName
	"Return author name"
	<return: #String>
	^ self author ifNotNil: #username ifNil: DSConstants emptyAuthorName