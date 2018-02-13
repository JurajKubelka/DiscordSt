*Discord-Integration-Playground
discordSharePlaygroundAction
	<pageAction>
	<pageActionOrder: 45>
	^ GLMGenericAction new
		action: [ :presentation | 
			DSSharePlaygroundCommand new
				playground: self;
				executeAsync ];
		icon: DSIcons discord;
		title: 'Share Playground' translated