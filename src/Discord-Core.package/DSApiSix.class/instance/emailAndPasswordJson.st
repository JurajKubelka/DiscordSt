json - conversions
emailAndPasswordJson
	"Return JSON string with email and password.
	It represents a JSON format used for login."
	^ DSJSONApiWriter toString: (Dictionary new
		at: 'email' put: self session email;
		at: 'password' put: self session password;
		yourself).
	