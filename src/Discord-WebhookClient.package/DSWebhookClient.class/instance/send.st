protocol - sending
send
	"Send a message to a particular target.
	In case of Webhooks it is a Webhook URL.
	In case of Bots and User Clients it is a Channel object."
	<return: #DSMessage or: nil>
	| entity |
	entity := DSPostToEntityCommand new
		post: self post;
		execute;
		entity.
	^ ZnClient new
		url: self url;
		entity: entity;
		ifFail: self ifFailBlock;
		post;
		response.