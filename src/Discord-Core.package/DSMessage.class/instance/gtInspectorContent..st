gt-inspector-extension
gtInspectorContent: composite
	<gtInspectorPresentationOrder: 1>
	^ composite text
		title: [ 'Content' translated ];
		display: [ self printFullMessage ];
		when: [ self hasContent or: [ self hasEmbeds ] ];
		format: [ :aText | aText ];
		yourself