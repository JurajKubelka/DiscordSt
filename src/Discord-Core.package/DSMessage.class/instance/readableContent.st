accessing - convenience
readableContent
	^ self content ifNotNil: [ :aString |
		DSUtility readableMentionsIn: aString with: self mentions ]