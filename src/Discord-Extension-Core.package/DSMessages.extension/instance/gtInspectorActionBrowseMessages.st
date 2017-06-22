*Discord-Extension-Core
gtInspectorActionBrowseMessages
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self browseMessages ];
		icon: (self iconNamed: #tinyMenu);
		condition: [ self notEmpty ];
		title: 'Browse messages' translated