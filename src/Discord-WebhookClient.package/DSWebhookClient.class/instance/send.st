protocol - sending
send
	"Send a message to a particular target.
	In case of Webhooks it is a Webhook URL.
	In case of Bots and User Clients it is a Channel object."
	<return: #DSMessage or: nil>
	| entity response |
	entity := DSPostToEntityCommand new
		post: self post;
		execute;
		entity.
	response := ZnClient new
		url: self url;
		entity: entity;
		ifFail: self ifFailBlock;
		post;
		response.
	response ifNil: [ ^ nil ].
	^ response isSuccess 
		ifTrue: [ 
			response isNoContent
				ifTrue: [ DSMessage new ]
				ifFalse: [ self parseMessage: response contents ] ]
		ifFalse: [ [ DSResponseError new
			response: response;
			signal: response contents ] 
				on: Error
				do: self ifFailBlock ]