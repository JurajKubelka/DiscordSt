*Discord-Integration-Playground
discordMonticelloOfSharedPlaygroundAction
	<pageAction>
	^ GLMGenericAction new
		action: [ :presentation | 
			DSOpenTonelArchiveCommand new
				bytes: self monticelloPort value bytes;
				execute ];
		icon: (self iconNamed: #glamorousOpen);
		title: 'Open Shared Source Code in Monticello' translated;
		condition: [ self monticelloPort value notNil ].