gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastList
			title: [ 'Messages' translated ];
			display: [ self messages ];
			when: [ self messages isEmptyOrNil not ];
			yourself