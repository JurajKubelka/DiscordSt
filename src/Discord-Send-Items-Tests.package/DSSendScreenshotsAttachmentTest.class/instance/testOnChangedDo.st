tests-enumerating
testOnChangedDo
	| results |
	results := OrderedCollection new.
	attachment := self classToTest new.
	attachment onChangedDo: [ :announcement | results add: announcement ].
	attachment addMorph: Morph new.
	self assert: results size equals: 1.
	self assert: results first class equals: DSSendAttachmentChangedAnnouncement.