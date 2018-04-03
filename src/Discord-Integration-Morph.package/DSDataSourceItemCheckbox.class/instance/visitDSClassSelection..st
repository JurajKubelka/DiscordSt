visiting
visitDSClassSelection: aDSClassSelection 
	| labelMorph |
	labelMorph := self table theme newRowIn: self for: {
		(self classIconFor: aDSClassSelection) asMorph.
		(self classNameFor: aDSClassSelection) asMorph asReadOnlyMorph }.
	^ self newCheckboxMorphFor: aDSClassSelection labelMorph: labelMorph.