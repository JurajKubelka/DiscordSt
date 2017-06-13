gt-inspector-extension
gtInspectorActionOpenHelpBrowser
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self attachments do: #data. presentation update ];
		icon: (Smalltalk ui icons iconNamed: #bottom);
		condition: [ self hasAttachments and: [ 
				self attachments anySatisfy: [ :attachment | 
					attachment hasData not ] ] ];
		title: 'Download all attachments'