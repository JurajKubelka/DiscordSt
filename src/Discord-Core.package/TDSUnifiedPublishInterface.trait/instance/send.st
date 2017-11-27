protocol - sending
send
	"Send a message to a particular target.
	In case of Webhooks it is a Webhook URL.
	In case of Bots and User Clients it is a Channel object."
	<return: #DSMessage or: nil>
	^ self explicitRequirement