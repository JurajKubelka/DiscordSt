gt-inspector-extension
gtInspectorActionDownloadData
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self data. presentation update ];
		icon: (self iconNamed: #bottom);
		condition: [ self hasData not ];
		title: 'Download data'