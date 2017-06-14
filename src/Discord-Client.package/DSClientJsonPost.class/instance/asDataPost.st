converting
asDataPost
	"Convert a post into DSClientDataPost"
	| data |
	data := DSClientDataPost new.
	fields ifNil: [ ^ data ].
	self fields keysAndValuesDo: [ :key :value | 
		data fieldsAt: key put: value ].
	^ data