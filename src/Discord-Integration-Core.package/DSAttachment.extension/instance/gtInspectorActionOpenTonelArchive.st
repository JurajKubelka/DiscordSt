*Discord-Integration-Core
gtInspectorActionOpenTonelArchive
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | 
				self openTonelArchive ];
		icon: (self iconNamed: #glamorousOpen);
		condition: [ self filename = 'tonel.zip' ];
		title: 'Open Tonel Archive'