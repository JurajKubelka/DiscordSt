instance creation
newCheckBoxFor: aFTBasicItem 
	| selection labelMorph checkbox |
	selection := aFTBasicItem data.
	labelMorph := self table theme newRowIn: self for: {
		(self iconFor: selection) asMorph.
		(self nameFor: selection) asMorph asReadOnlyMorph }.
	checkbox := CheckboxMorph new
			on: selection
			selected: #isSelected
			changeSelected: #isSelected:;
			getLabelSelector: #itemName;
			labelMorph: labelMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	aFTBasicItem isRootItem ifTrue: [ ^ checkbox ].
	"Find a package selection that holds the selection class"
	self rootItem children 
		detect: [ :eachItem | 
			eachItem data children 
				anySatisfy: [ :eachSelection | eachSelection = selection ] ] 
		ifFound: [ :item | item data onSelectionChangedDo: [ :announcement |
				checkbox enabled: announcement state not ] ]
		ifNone: [ "ignore" ].
	^ checkbox