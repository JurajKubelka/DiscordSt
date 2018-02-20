world menu
updateDiscordStOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Pharo Sprint Dashboard')
		order: 10;
		label: 'Update DiscordSt';
		icon: #glamorousRefresh asIcon;
		parent: #Collaboration;
		action: [ self updateDiscordSt ]