tests-utility
testSetAuthor
	| user |
	command := self newObject.
	command client: self newClient.
	"We set an artificial user."
	user := self coreModelJsonMapping read: DSUser withMapping: #userMappingFor: on: self coreModelJsonMapping jsonUser readStream.
	user restApi: self newRestApi.
	command client restApi
		cacheAt: 'me'
		put: user.
	command setAuthor.
	self assert: command wrapper contributorsWithDateAndTimes notEmpty.
	self assert: command wrapper contributorsWithDateAndTimes first key username equals: 'Nelly'