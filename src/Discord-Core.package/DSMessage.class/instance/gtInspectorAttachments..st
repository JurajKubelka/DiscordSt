gt-inspector-extension
gtInspectorAttachments: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastList
		title: 'Attachments';
		display: [ self attachments ];
		when: [ self hasAttachments ];
		yourself