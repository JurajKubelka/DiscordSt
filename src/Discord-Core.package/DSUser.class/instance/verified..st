accessing
verified: boolean
	"Set whether the email on this account has been verified."
	^ self fieldsAt: 'verified' put: boolean