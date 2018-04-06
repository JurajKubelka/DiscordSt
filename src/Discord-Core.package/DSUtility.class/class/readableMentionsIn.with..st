message
readableMentionsIn: aString with: arrayOfMentions
	<return: #String>
	| userContent |
	userContent := aString.
	arrayOfMentions do: [ :eachMention | 
		userContent := userContent  
			copyReplaceAll: eachMention writtenMentionString 
			with: eachMention mentionString ].
	^ userContent