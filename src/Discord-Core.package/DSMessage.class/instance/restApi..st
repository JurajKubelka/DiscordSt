accessing
restApi: aDSRestApi
	"Set object responsible for Discord REST API communication."
	restApi := aDSRestApi.
	self attachments do: [ :eachAttachment | eachAttachment restApi: aDSRestApi ]