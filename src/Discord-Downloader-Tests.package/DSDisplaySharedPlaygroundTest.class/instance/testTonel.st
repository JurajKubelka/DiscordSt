tests
testTonel
	| arrayOfData data port |
	command := self classToTest new.
	data := DSSharedData newTonel.
	data
		url: 'https://example.com/tonel.zip';
		contents: self tonelContents.
	arrayOfData := Array with: data yourself.
	command sharedData: arrayOfData.
	window := command execute; window.
	self
		assert: command playground entity content
		equals: ''.
	port := command playground monticelloPort.
	self assert: port notNil.
	self assert: port value equals: data.
	self assert: command otherWindows size equals: 1.
	command otherWindows do: #delete.