accessing
inlineScript: aString 
	"Add a inlined script"
	stream 
		nextPut: $`;
		nextPutAll: aString asString;
		nextPut: $`