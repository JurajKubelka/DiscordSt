json - conversions
tokenJson
	"Return JSON string with token.
	It represents a JSON format used for logout."
	^ DSModelJsonMapping
		write: self session mappedTo: #clientSessionTokenMappingFor:	