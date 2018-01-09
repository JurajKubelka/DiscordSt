tests - channel
testCollectionOfSortedChannelsMappingForDM
	"Direct channels"
	| result jsonString jsonResult |
	jsonString := self classToTest jsonCollectionOfDirectChannelsOne.
	result := self read: jsonString as: #CollectionOfSortedChannels mappedTo: #collectionOfSortedChannelsMappingFor:.
	self assert: result class equals: DSChannels.
	self assert: result size equals: 1.
	self assert: result first class equals: DSDirectMessageChannel.
	jsonResult := self write: result mappedTo: #collectionOfSortedChannelsMappingFor:.
	self 
		assert: jsonResult 
		equals: '[{"id":"319674150115610528","type":1,"last_message_id":"3343820033257021450","recipients":[{"id":"82198898841029460","username":"test","discriminator":"9999","avatar":"33ecab261d4681afa4d85a04691c4a01","bot":false,"verified":false}]}]'.