*Discord-Extension-Core
gtInspectorActionSendObjectToDiscordChannel
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation | 
			DSSendObjectCommand new
				client: DSClient default;
				object: self;
				forkedExecution ];
		icon: DSIcons discord;
		title: 'Send the object to Discord' translated