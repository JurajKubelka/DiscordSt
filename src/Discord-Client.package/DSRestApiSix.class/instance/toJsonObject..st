json - conversions
toJsonObject: aString 
	"Convert string to a JSON object."
	<return: #NeoJSONObject>
	^ NeoJSONObject fromString: aString