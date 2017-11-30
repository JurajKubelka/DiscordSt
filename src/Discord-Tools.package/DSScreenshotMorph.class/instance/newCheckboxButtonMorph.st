instance creation
newCheckboxButtonMorph
	^ CheckboxButtonMorph new
			selected: self isSelected;
			target: self;
			actionSelector: #toggleSelection;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.