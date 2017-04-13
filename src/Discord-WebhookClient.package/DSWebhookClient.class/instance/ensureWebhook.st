private
ensureWebhook
	"Create a webhook object if necessary and return it."
	self webhook ifNil: [ self webhook: self newWebhook ].
	^ self webhook