accessing
boldItalic: aString 
	"Add a bold script"
	stream 
		nextPutAll: '**_';
		nextPutAll: aString asString;
		nextPutAll: '_**'