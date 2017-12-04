instance creation
newCheckboxMorph
	^ CheckboxMorph new
			on: self 
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: self newLabelMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.