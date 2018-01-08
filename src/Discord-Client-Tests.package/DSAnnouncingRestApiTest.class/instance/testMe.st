tests
testMe
	| user results |
	results := OrderedCollection new: 1.
	self startMockServer initializeUsersMeDelegate.
	restApi := self classToTest new.
	restApi apiUrl: self apiUrl.
	restApi token: self constants tokenString.
	restApi announcer subscribe: DSAnnouncement do: [ :ann | results add: ann ].
	user := restApi me.
	self assertUsersMe: user.
	self assert: self mockServerRequests size equals: 1.
	self assert: self mockServerRequests first method equals: #GET.
	self assert: results size equals: 1.
	self assert: results first class equals: DSUserAnnouncement.
	self assert: results first user equals: user.