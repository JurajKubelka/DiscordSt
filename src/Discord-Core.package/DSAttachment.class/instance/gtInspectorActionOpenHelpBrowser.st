gt-inspector-extension
gtInspectorActionOpenHelpBrowser
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self data. presentation update ];
		icon: (Smalltalk ui icons iconNamed: #bottom);
		condition: [ self hasData not ];
		title: 'Download data'