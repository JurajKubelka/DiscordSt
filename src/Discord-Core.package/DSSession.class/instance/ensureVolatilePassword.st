private
ensureVolatilePassword
	| passwordValue |
	passwordValue := ''.
	"Migration code"
	password isString ifTrue: [ passwordValue := password. password := nil ].
	password ifNotNil: [ ^ self ].
	"Initialization"
	password := AutoReloadableVolatileTemporarySettingValue new.
	password string: passwordValue.