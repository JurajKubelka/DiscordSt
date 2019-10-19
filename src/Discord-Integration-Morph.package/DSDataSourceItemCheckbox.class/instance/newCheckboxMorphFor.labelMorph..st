instance creation
newCheckboxMorphFor: aDSSendAttachment labelMorph: aLabelMorph
	| checkbox |
	checkbox := CheckboxMorph new.
	checkbox
		on: aDSSendAttachment
			selected: #isSelected
			changeSelected: #isSelected:;
		getEnabledSelector: #isEnabled;
		labelMorph: aLabelMorph;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	(aDSSendAttachment
		onContentChangedDo: [ :announcement | self table dataSource updateData ])
		subscriber: checkbox.
	(aDSSendAttachment
		onSelectionChangedDo: [ :announcement | self toggleEnabledForAllChildren ])
		subscriber: checkbox.
	(aDSSendAttachment
		onEnabledChangedDo: [ :announcement | checkbox enabled: aDSSendAttachment isEnabled ])
		subscriber: checkbox.
	checkbox announcer
		when: MorphDeleted
		do: [ :announcement | 
			announcement morph = checkbox
				ifTrue: [ aDSSendAttachment announcer unsubscribe: checkbox ] ].
	^ checkbox