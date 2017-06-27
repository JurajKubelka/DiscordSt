gt-inspector-extension
gtInspectorExtraInfoIn: composite
	<gtInspectorPresentationOrder: 1>  
	^ composite with: [ :aComposite |
			info isEmptyOrNil ifFalse: [ 
				self info gtInspectorItemsIn: aComposite ] ]