accessing
mfaEnabled: boolean
	"Set whether the user has two factor enabled on their account."
	^ self fieldsAt: 'mfa_enabled' put: boolean