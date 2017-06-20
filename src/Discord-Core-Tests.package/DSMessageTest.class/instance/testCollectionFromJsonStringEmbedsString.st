tests
testCollectionFromJsonStringEmbedsString
	"Check embeds collection"
	| api |
	api := self newApi.
	message := self messageClass 
		collectionFromJsonString: '[', self messageObjectWithEmbedsString, ']' api: api.
	self assert: message isCollection.
	self assert: message class equals: DSMessages.
	self assert: message size equals: 1.
	self assert: message first api notNil.
	self assert: message first api == api.
	self assert: message first embeds size equals: 1.
	self assert: message first embeds first isEmbed.
	self assert: message first embeds first api notNil.
	self assert: message first embeds first api == api.
	