gt-inspector-extension
gtInspectorAttachmentTypesIn: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastList
			title: [ 'Attachments' translated ];
			display: [ self attachmentTypes ];
			when: [ self attachmentTypes isEmptyOrNil not ];
			yourself