execute
execute
	self sortedChannels: self rootChannels.
	self sortedChannels do: [ :eachRoot | 
		eachRoot isCategory ifTrue: [ | children |
			children := self selectChildren: eachRoot id.
			eachRoot subordinateChannels: children ] ].