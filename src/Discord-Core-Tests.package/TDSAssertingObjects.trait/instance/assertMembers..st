asserting
assertMembers: aDSMembers
	self assert: aDSMembers notNil.
	self assert: aDSMembers isCollection.
	self assert: aDSMembers size equals: 1.
	self assert: aDSMembers first nick equals: 'this users guild nickname (if one is set)'.
	self 
		assert: aDSMembers first user restApi == self sharedRestApi 
		description: 'It should have the same api object'.