accessing
permissions: integer
	"Set bitwise of the user's enabled/disabled permissions."
	^ self fieldsAt: 'permissions' put: integer