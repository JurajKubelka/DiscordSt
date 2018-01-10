gt-inspector-extension
gtInspectorMessages: composite
	<gtInspectorPresentationOrder: 1>
	^ composite with: [ :aComposite |
		self isConnected ifTrue: [ 
			self messages gtInspectorMessages: composite ] ]