accessing
messageStringForDiscordChannel
	"A message that is send to a Discord test case channel"
	^ self travisMessage ifNil: [ 
		self appveyorMessage ifNil: [ 
			self messageContentString ] ]