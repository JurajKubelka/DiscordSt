private
buildListItemMorphFor: aDSMessage 
	"Build a Morph representation for aDSMessage,
	that will be displayed in the message list (listModel)."
	| lines descriptionMorph |
	lines := aDSMessage printFullMessage asString trimLeft lines.
	descriptionMorph := lines 
		ifEmpty: [ '...missing description...'  ] 
		ifNotEmpty: [ :aCollection | aCollection first ].
	^ descriptionMorph 
"	^ (Smalltalk ui theme newColumnIn: World for: { 
			descriptionMorph.
			aDSMessage isFuelStack 
				ifTrue: [ SimpleButtonMorph new 
					target: aDSMessage;
					label: DSSendStackCommand commandName;
					actionSelector: #openInDebugger;
					yourself ]
				ifFalse: [ aDSMessage isFuelObject 
					ifTrue: [ SimpleButtonMorph new 
					target: aDSMessage;
					label: DSSendObjectCommand commandName;
					actionSelector: #openInDebugger;
					yourself  ]
					ifFalse: [ '' asStringMorph ] ]})
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself"