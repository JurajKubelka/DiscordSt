private
ensureVolatileToken
	| tokenValue |
	tokenValue := ''.
	"Migration code"
	token isString ifTrue: [ tokenValue := token. token := nil ].
	token ifNotNil: [ ^ self ].
	"Initialization"
	token := AutoReloadableVolatileTemporarySettingValue new.
	token string: tokenValue.