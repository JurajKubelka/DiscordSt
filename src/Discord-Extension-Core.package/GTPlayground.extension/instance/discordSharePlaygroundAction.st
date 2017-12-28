*Discord-Extension-Core
discordSharePlaygroundAction
	<pageAction>
	^ GLMGenericAction new
		action: [ :presentation | 
			DSSharePlaygroundCommand new
				playground: self;
				executeAsync ];
		icon: DSIcons discord;
		title: 'Share Playground' translated