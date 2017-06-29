tests-accessing
testDecodeFuelId
	command := self newCommand.
	command encodedFuelId: self encodedFuelIdString.
	command decodeFuelId.
	self assert: command fuelId class equals: DSFuelId.
	self assert: command fuelId messageId equals: self encodedFuelIdString.
	self assert: command fuelId channelId equals: '289187121854545930'.
	self assert: command fuelId dateAndTime equals: '2017-06-28T13:12:58+00:00' asDateAndTime.
	self 
		assert: command fuelId messageIds 
		equals: #( '329610109175070720' '329610121510649866' '329610127818883072' ).