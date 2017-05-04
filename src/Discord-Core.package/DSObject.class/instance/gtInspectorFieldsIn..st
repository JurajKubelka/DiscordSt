gt-inspector-extension
gtInspectorFieldsIn: composite
	<gtInspectorPresentationOrder: 9>
	^ composite with: [ :aComposite |
		fields ifNotNil: [ :aDictionary |
			(aDictionary gtInspectorItemsIn: composite)
				title: 'Fields' translated;
				yourself ] ]