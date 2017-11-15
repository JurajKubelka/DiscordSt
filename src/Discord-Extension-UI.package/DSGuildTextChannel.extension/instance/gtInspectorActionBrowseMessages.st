*Discord-Extension-UI
gtInspectorActionBrowseMessages
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self browseMessages ];
		iconName: #tinyMenu;
		title: 'Browse messages' translated