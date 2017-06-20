gt-inspector-extension
gtInspectorLogin: composite
	<gtInspectorPresentationOrder: -10>
	^ composite morph
		title: 'Login';
		display: [ :entity | | window |
			window := (DSLoginCommand new
				client: self;
				specModelWithoutToolbar) 
					buildWithSpec.
			 ];
		when: [ self isAuthenticated not ];
		yourself