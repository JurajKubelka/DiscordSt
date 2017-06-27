gt-inspector-extension
gtInspectorMessages: composite
	<gtInspectorPresentationOrder: 1>
	^ composite with: [ :aComposite |
		self isAuthenticated ifTrue: [ 
			self messages gtInspectorMessages: composite ] ]