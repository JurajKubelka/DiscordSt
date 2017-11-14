accessing
restApi: aDSRestApi
	"Set object responsible for Discord REST API communication."
	super restApi: aDSRestApi.
	self attachments do: [ :eachAttachment | eachAttachment restApi: aDSRestApi ]