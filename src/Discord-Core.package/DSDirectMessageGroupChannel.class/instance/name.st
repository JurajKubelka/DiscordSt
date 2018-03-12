accessing
name
	^ name ifNil: [ self nameBasedOnRecipients ]