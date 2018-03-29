testing
shouldBeExcluded
	^ (Pragma allNamed: #excludeShareOnDiscord in: self class) anySatisfy: [ :eachPragma | 
			self perform: eachPragma selector ]