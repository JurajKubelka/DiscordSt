accessing
isEnabled: aBoolean
	self assert: [ aBoolean or: [ aBoolean not ] ] description: 'It should be a boolean'.
	isEnabled = aBoolean ifTrue: [ ^ self ].
	isEnabled := aBoolean.
	self announcer 
		announce: (DSSendAttachmentEnabledChangedAnnouncement new 
			attachment: self; 
			yourself)