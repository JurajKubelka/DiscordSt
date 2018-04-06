printing
printFullMessageOn: aStream
	self author ifNotNil: [ :aUser | 
		aStream withAttributes: { TextEmphasis bold. TextColor blue } do: [ 
			aStream << aUser username ] ].
	self timestamp ifNotNil: [ :aDateAndTime | 
		aStream nextPutAll: '   '.
		aStream withAttributes: { TextEmphasis italic. TextColor gray } do: [ 
			aStream << (DSUtility printShortTime: aDateAndTime) ] ].
	aStream << String crlfcrlf.
	self readableContent ifNotNil: [ :string | 
		aStream << string << String crlfcrlf ].
	self embeds 
		do: [ :eachEmbed |
			aStream withAttribute: TextEmphasis bold do: [ 
				aStream nextPutAll: 'Embed: '; crlf ].
			eachEmbed printFullMessageOn: aStream ]
		separatedBy: [ aStream crlf. ].
	self attachments ifNotNil: [ :collection | 
		collection 
			do: [ :eachAttachment | aStream print: eachAttachment ]
			separatedBy: [ aStream crlf. ] ]