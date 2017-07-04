tests-utility
testSetAuthor
	command := self newObject.
	command client: self newClient.
	"We set an artificial user."
	command client restApi
		cacheAt: 'me'
		put: (DSUser fromJsonString: DSTestHelper fullUserJSONString api: command client restApi).
	command setAuthor.
	self assert: command wrapper contributorsWithDateAndTimes notEmpty.
	self assert: command wrapper contributorsWithDateAndTimes first key username equals: 'user one'