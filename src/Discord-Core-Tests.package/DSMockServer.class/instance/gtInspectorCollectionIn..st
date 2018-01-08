gt-inspector-extension
gtInspectorCollectionIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
		title: [ 'Requests' translated ];
		display: [ self collection ];
		yourself