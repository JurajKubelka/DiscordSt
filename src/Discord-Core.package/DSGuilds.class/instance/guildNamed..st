enumerating
guildNamed: aString 
	<return: #DSGuild or: nil>
	^ self detect: [ :eachGuild | eachGuild name = aString ] ifNone: nil