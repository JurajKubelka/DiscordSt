menus
menuFor: aBuilder
	editorMorph := aBuilder model ifNil: [ ^ self ].
	editorModel := editorMorph model ifNil: [ ^ self ].
	wholeText := editorMorph dsGetString.
	selection := editorMorph selectionInterval.
	self assert: selection notNil.
	selectedText := wholeText copyFrom: selection first to: selection last.
	self assert: selectedText notNil.
	self shouldBeExcluded ifTrue: [ ^ self ].
	menuItem := aBuilder item: 'Share on Discord'.
	menuItem action: [ self shareOnDiscord ].
	menuItem icon: DSIcons discord.
	menuItem order: 8.