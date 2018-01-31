gt-inspector-extension
gtInspectorAttachmentsIn: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastTree
		title: [ 'Attachments' translated ];
		display: [ self attachments ];
		children: [ :item | item children ];
		expandedUntil: 1;
		yourself