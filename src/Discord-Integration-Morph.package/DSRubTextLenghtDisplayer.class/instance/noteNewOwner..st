geometry
noteNewOwner: aMorph
	super noteNewOwner: aMorph.
	self color: self backgroundColor.
	lineAnnotation := RubTextFieldArea new.
	lineAnnotation withoutAnyDecorator.
	lineAnnotation backgroundColor: Color transparent.
	lineAnnotation font: self fontToUse.
	lineAnnotation beReadOnly.
	lineAnnotation textColor: self textColor.
	rowMorph := self theme
		newRowIn: self
		for:
			{(self spacer: 2).
			lineAnnotation }.
	rowMorph color: Color transparent.
	rowMorph hResizing: #spaceFill.
	lineAnnotation hResizing: #spaceFill.
	self addMorph: rowMorph