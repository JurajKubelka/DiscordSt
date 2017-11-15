tests
testDecodeFuelId
	| fuelId |
	fuelId := self instanceToTest 
		decodeFuelId: self encodedFuelIdString.
	self assert: fuelId class equals: DSFuelId.
	self assert: fuelId guildId equals: '289187121854545930'.
	self assert: fuelId channelId equals: '289187121854545930'.
	self assert: fuelId messageChannelId equals: '329604261711314945'.
	self assert: fuelId dateAndTime equals: '2017-06-28T13:12:58+00:00' asDateAndTime.
	self assert: fuelId messageId equals: self encodedFuelIdString.
	self assert: fuelId messageIds equals: #( '329610109175070720' '329610121510649866' '329610127818883072' ).
