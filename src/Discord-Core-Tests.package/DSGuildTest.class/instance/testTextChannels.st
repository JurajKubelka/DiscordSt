tests-enumerating
testTextChannels
	| channels |
	channels := self coreModelJsonMapping 
		read: #CollectionOfSortedChannels 
		withMapping: #collectionOfSortedChannelsMappingFor: 
		on: self coreModelJsonMapping jsonCollectionOfChannelsThree readStream.
	object := self classToTest new.
	object channels: channels.
	self assert: object textChannels notNil.
	self assert: object textChannels size equals: 1.
	self assert: object textChannels first name equals: 'general'.	