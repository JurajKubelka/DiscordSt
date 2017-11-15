tests - channel
testSpecifiedChannelMappingForDMGroup
	| result jsonResult jsonString |
	jsonString := self classToTest jsonChannelDirectMessageGroup.
	result := self read: jsonString as: #SpecifiedChannel mappedTo: #specifiedChannelMappingFor:.
	self assert: result class equals: DSDirectMessageGroupChannel.
	self assert: result id equals: '319674150115710528'.
	self assert: result name equals: 'Some test channel'.
	self assert: result recipients class equals: Array.
	self assert: result lastMessageId equals: '3343820033257021450'.
	self assert: result icon equals: 'an icon hash'.
	self assert: result ownerId equals: '82198810841029460'.
	jsonResult := self write: result mappedTo: #specifiedChannelMappingFor:.
	self 
		assert: jsonResult 
		equals: '{"id":"319674150115710528","type":3,"name":"Some test channel","last_message_id":"3343820033257021450","recipients":[{"id":"82198898841029460","username":"test","discriminator":"9999","avatar":"33ecab261d4681afa4d85a04691c4a01","bot":false,"verified":false},{"id":"82198810841029460","username":"test2","discriminator":"9999","avatar":"33ecab261d4681afa4d85a10691c4a01","bot":false,"verified":false}],"icon":"an icon hash","owner_id":"82198810841029460"}'.