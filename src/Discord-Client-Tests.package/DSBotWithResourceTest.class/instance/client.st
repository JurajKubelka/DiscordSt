accessing
client
	^ client ifNil: [ client := self classToTest new
		token: self externalBotToken;
		yourself ]