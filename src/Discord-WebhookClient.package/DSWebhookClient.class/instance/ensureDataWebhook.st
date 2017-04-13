private
ensureDataWebhook
	self webhook 
		ifNil: [ self webhook: self newDataWebhook ]
		ifNotNil: [ self webhook: self webhook asDataWebhook ].
	^ self webhook