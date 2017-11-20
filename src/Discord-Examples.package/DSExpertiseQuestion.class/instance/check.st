checking
check
	self hasExpertiseQuestion ifFalse: [ ^ self ].
	answer 
		answerMessage: self message 
		withPackageName: self askedPackageName.