accessing
script: scriptString language: typeString
	"Add a script of a given language"
	stream 
		nextPutAll: '```';
		nextPutAll: typeString asString;
		cr;
		nextPutAll: scriptString asString;
		cr;
		nextPutAll: '```';
		cr
