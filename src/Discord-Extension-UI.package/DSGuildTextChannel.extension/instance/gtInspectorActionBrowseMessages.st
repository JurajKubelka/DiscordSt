*Discord-Extension-UI
gtInspectorActionBrowseMessages
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self browseMessages ];
		icon: (self iconNamed: #tinyMenu);
		title: 'Browse messages' translated