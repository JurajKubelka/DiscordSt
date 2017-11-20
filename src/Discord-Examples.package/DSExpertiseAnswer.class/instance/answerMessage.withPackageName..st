protocol
answerMessage: aDSMessage withPackageName: packageName
	| results |
	results := self findPackagesNamed: packageName.
	results 
		ifEmpty: [ self replyNoExpertsTo: aDSMessage ]
		ifNotEmpty: [ self replyTo: aDSMessage experts: results ]
	