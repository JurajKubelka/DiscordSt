json - conversions
emailAndPasswordJson
	"Return JSON string with email and password.
	It represents a JSON format used for login."
	^ DSModelJsonMapping 
		write: self session mappedTo: #clientSessionEmailAndPasswordMappingFor: