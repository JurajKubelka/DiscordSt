tests - public - user
testMeTokenRequiered
	| results answer |
	results := OrderedCollection new.
	restApi := self classToTest new.
	restApi announcer 
		when: DSAnnouncement
		do: [ :ann | results add: ann ].
	answer := restApi me.
	self assert: results size equals: 1.
	self assert: results first class equals: DSAuthenticationRequiredAnnouncement.
	self assert: answer isNil.