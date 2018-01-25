printing
printFullMessageOn: aStream
	self content ifNotNil: [ :string | aStream << string << String crlfcrlf ].
	self embeds do: [ :eachEmbed |
		eachEmbed printFullMessageOn: aStream ].
	self attachments ifNotNil: [ :collection | 
		collection 
			do: [ :eachAttachment | aStream print: eachAttachment ]
			separatedBy: [ aStream crlf. ] ]