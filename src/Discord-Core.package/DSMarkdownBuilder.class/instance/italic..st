accessing
italic: aString 
	"Add a italic script"
	stream 
		nextPut: $*;
		nextPutAll: aString asString;
		nextPut: $*