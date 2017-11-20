*Discord-Extension-Core
discordSharePlaygroundAction
	<pageAction>
	^ GLMGenericAction new
		action: [ :presentation | 
			DSSendPlaygroundCommand new
				client: DSClient default;
				playground: self;
				forkedExecution ];
		icon: DSIcons discord;
		title: 'Share code snippet on Discord' translated