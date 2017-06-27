gt-inspector-extension
gtInspectorActionDebug
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self openInDebugger ];
		icon: (self iconNamed: #smallDebugIt);
		condition: [ self serializedData notNil ];
		title: 'Debug the received external stack' translated