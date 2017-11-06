converting
asDataWebhook
	"Data Webhook includes all but embeds."
	| data |
	data := DSWebhookDataPost new.
	fields ifNil: [ ^ data ].
	(self fieldsDictionary includesKey: 'embeds') ifTrue: [ 
		DSWrongCombinationError signal: 'You cannot use embeds and file together' ].
	self fieldsDictionary keysAndValuesDo: [ :key :value |
		data fieldsAt: key put: value ].
	^ data