gt-inspector-extension
gtInspectorMessages: composite
	<gtInspectorPresentationOrder: 1>
	^ composite with: [ :aComposite |
			self messages gtInspectorMessages: composite ]