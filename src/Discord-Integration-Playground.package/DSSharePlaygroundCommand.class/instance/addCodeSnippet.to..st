private
addCodeSnippet: codeSnippet to: items
	| item |
	item := items addCodeSnippetAttachment: codeSnippet.
	item 
		isSelected: DSSharePlaygroundSettings wasCodeSnippetSelected;
		onSelectionChangedDo: [ :announcement | 
			DSSharePlaygroundSettings wasCodeSnippetSelected: announcement state ].