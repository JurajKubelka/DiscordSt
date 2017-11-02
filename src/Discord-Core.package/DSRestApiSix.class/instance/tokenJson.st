json - conversions
tokenJson
	"Return JSON string with token.
	It represents a JSON format used for logout."
	^ DSJSONApiWriter toString: (Dictionary new
		at: 'token' put: self session token;
		yourself).
	