gt-inspector-extension
gtInspectorActionDebug
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | self openInDebugger ];
		icon: (self iconNamed: #smallDebugIt);
		condition: [ self serializedStack notNil ];
		title: 'Debug the external stack'