convenience
message: aString 
	self webhook: (self newWebhook content: aString; yourself)