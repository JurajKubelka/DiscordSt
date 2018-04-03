visiting
visitDSPackageSelection: aDSPackageSelection 
	| labelMorph checkbox rowMorph |
	labelMorph := (self packageNameFor: aDSPackageSelection) asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		(self packageIconFor: aDSPackageSelection) asMorph.
		labelMorph }.
	checkbox := self newCheckboxMorphFor: aDSPackageSelection labelMorph: rowMorph.
	aDSPackageSelection
		onSelectionChangedDo: [ :announcement | 
			labelMorph contents: (self packageNameFor: aDSPackageSelection) ].
	^ checkbox