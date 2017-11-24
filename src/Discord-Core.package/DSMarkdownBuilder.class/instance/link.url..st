accessing
link: linkName url: linkUrl
	"Add a URL link"
	stream 
		nextPut: $[;
		nextPutAll: linkName asString;
		nextPutAll: '](';
		nextPutAll: linkUrl asString;
		nextPut: $)