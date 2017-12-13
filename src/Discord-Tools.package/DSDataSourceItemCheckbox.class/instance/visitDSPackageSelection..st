visiting
visitDSPackageSelection: aDSPackageSelection 
	| labelMorph checkbox rowMorph |
	labelMorph := (self packageNameFor: aDSPackageSelection) asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		(self packageIconFor: aDSPackageSelection) asMorph.
		labelMorph }.
	checkbox := CheckboxMorph new
			on: aDSPackageSelection
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	aDSPackageSelection
		onSelectionChangedDo: [ :announcement | 
			labelMorph contents: (self packageNameFor: aDSPackageSelection) ].
	^ checkbox