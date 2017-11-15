printing
printFullMessageOn: aStream
	self content ifNotNil: [ :string | aStream << string << String crlfcrlf ].
	self embeds do: [ :eachEmbed |
		eachEmbed printFullMessageOn: aStream ]