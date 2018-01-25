private
sendSharedData
	"Send shared data, separated from an user (main) message."
	sharedData := self newDiscordSharedDataSender 
		items: self items;
		registry: self registry;
		send;
		yourself.
