world menu
updateDiscordStOn: aBuilder
	<worldMenu>
	(aBuilder item: #UpdateDiscordSt)
		order: 10;
		label: 'Update DiscordSt';
		icon:
			(self iconNamed: #glamorousRefresh);
		parent: #Collaboration;
		action: [ self updateDiscordSt ]