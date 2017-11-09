utility
write: aDSObject mappedTo: mappingSymbol 
	"Return a JSON string representation of the Discord object."
	<return: #String>
	^ self classToTest write: aDSObject mappedTo: mappingSymbol