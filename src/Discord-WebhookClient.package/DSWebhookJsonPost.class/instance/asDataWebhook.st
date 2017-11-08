converting
asDataWebhook
	"Data Webhook includes all but embeds."
	| data |
	data := DSWebhookDataPost new.
	fields ifNil: [ ^ data ].
	self fieldsDictionary keysAndValuesDo: [ :key :value |
		data fieldsAt: key put: value ].
	^ data