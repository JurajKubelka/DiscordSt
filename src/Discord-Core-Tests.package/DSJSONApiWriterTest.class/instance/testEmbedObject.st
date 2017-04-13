tests
testEmbedObject
	object := self newEmbedObject
		title: 'title message'; 
		description: 'description message';
		url: 'http://example.com';
		color: Color green;
		footerText: 'Example Company';
		footerIconUrl: 'http://example.com/icon.png';
		yourself.
	json := DSJSONApiWriter toString: object.
	self assert: json equals: '{"description":"description message","url":"http://example.com","color":65280,"title":"title message","footer":{"text":"Example Company","icon_url":"http://example.com/icon.png"}}'.