*Discord-Extension-Core
gtInspectorActionDebug
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self openInDebugger ];
		icon: (self iconNamed: #smallDebugIt);
		condition: [ self isFuelStack ];
		title: 'Debug the received external stack' translated