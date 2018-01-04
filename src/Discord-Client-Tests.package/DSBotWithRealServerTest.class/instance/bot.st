accessing
bot
	^ bot ifNil: [ bot := self classToTest new
		token: self externalBotToken;
		yourself ]