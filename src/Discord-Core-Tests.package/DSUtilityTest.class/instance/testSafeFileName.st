tests
testSafeFileName
	| safeString |
	safeString := DSUtility safeFileName: 'a DSClient: user.name.secondname@gggmaillll.com (detail) (d...etc...'.
	self assert: safeString notNil.
	self assert: safeString equals: 'a-DSClient-user-name-secondname-gggmaillll-com-detail-d-etc'.