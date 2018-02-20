world menu
updateDiscordStOn: aBuilder
	<worldMenu>
	(aBuilder item: #'UpdateDiscordSt')
		order: 10;
		label: 'Update DiscordSt';
		icon: #glamorousRefresh asIcon;
		parent: #Collaboration;
		action: [ self updateDiscordSt ]