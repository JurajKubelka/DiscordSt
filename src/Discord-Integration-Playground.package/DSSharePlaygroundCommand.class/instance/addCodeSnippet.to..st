private
addCodeSnippet: codeSnippet to: items
	| item |
	item := items addCodeSnippetAttachment: codeSnippet.
	item 
		isSelected: self settingsClass  wasCodeSnippetSelected;
		onSelectionChangedDo: [ :announcement | 
			self settingsClass wasCodeSnippetSelected: announcement state ].