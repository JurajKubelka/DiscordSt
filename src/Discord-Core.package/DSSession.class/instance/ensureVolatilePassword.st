private
ensureVolatilePassword
	| passwordValue |
	passwordValue := ''.
	"Migration code"
	password isString ifTrue: [ passwordValue := password. password := nil ].
	password ifNotNil: [ ^ self ].
	"Initialization"
	password := TemporaryAutoReloadableVolatileSystemSetting new.
	password string: passwordValue.