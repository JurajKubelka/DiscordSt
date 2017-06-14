gt-inspector-extension
gtInspectorFilePartsIn: composite
	<gtInspectorPresentationOrder: 9.5>
	^ composite with: [ :aComposite |
		fileParts ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'FileParts' translated;
				yourself ] ]