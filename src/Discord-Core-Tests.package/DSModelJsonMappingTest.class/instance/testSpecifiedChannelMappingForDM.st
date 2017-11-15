tests - channel
testSpecifiedChannelMappingForDM
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelDirectMessage.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSDirectMessageChannel.
	self assert: result id equals: '319674150115610528'.
	self assert: result recipients class equals: Array.
	self assert: result lastMessageId equals: '3343820033257021450'.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self 
		assert: jsonResult
		equals: '{"id":"319674150115610528","type":1,"last_message_id":"3343820033257021450","recipients":[{"id":"82198898841029460","username":"test","discriminator":"9999","avatar":"33ecab261d4681afa4d85a04691c4a01","bot":false,"verified":false}]}'.