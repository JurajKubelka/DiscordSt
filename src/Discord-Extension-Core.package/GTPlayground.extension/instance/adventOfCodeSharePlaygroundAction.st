*Discord-Extension-Core
adventOfCodeSharePlaygroundAction
	<pageAction>
	^ GLMGenericAction new
		action: [ :presentation | 
			DSAocSharePlaygroundCommand new
				playground: self;
				execute ];
		icon: DSIcons adventOfCode;
		title: 'Share Advent of Code on Discord Advent of Code Channel' translated