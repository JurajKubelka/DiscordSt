tests
testSafeFileName3
	| safeString |
	safeString := DSUtility
		safeFileName: '   a DSClient: user.name.secondname@gggmaillll.com (detail) (d...etc...   ' asText.
	self assert: safeString notNil.
	self assert: safeString equals: 'a-Text-for-a-DSClient-user-name-secondname-gggmaillll-com-etc'