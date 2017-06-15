*Discord-Extension-Core
gtInspectorActionSendObjectToDiscordChannel
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | DSSendCommand sendObject: self ];
		icon: DSIcons discord;
		title: 'Send the object to Discord' translated