visiting
visitDSClassSelection: aDSClassSelection 
	| labelMorph checkbox |
	labelMorph := self table theme newRowIn: self for: {
		(self classIconFor: aDSClassSelection) asMorph.
		(self classNameFor: aDSClassSelection) asMorph asReadOnlyMorph }.
	checkbox := CheckboxMorph new
			on: aDSClassSelection
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: labelMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	"Find a package selection that holds the selection class"
	self rootItem children 
		detect: [ :eachItem | 
			eachItem data children 
				anySatisfy: [ :eachSelection | eachSelection = aDSClassSelection ] ] 
		ifFound: [ :anItem | anItem data onSelectionChangedDo: [ :announcement |
				checkbox enabled: announcement state not ] ]
		ifNone: [ "ignore" ].
	^ checkbox