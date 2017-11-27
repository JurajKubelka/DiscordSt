accessing
strikeThrough: aString 
	"Add a bold script"
	stream 
		nextPutAll: '~~';
		nextPutAll: aString asString;
		nextPutAll: '~~'