instance creation
newCheckBoxFor: aFTBasicItem 
	<return: #CheckboxMorph>
	^ aFTBasicItem data accept: (DSDataSourceItemCheckbox new
		dataSource: self;
		yourself).