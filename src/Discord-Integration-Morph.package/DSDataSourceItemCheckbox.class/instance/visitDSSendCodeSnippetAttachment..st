visiting
visitDSSendCodeSnippetAttachment: aDSSendCodeSnippetAttachment 
	| labelMorph checkbox rowMorph |
	labelMorph := 'Playground Code Snippet' asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph }.
	checkbox := CheckboxMorph new
			on: aDSSendCodeSnippetAttachment
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	^ checkbox