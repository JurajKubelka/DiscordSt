gt-inspector-extension
gtInspectorAttachmentsIn: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastList
		title: [ 'Attachments' translated ];
		display: [ self attachments ];
		when: [ self attachments notEmpty ];
		yourself