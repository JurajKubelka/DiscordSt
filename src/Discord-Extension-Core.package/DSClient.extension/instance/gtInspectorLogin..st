*Discord-Extension-Core
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
		updateOn: DSAuthenticatedAnnouncement 
			from: [ :client | client announcer ];
		yourself