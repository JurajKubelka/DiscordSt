ui
specModelWithDiscordInfo
	"Return a basic Spec model extended by an information about Discord.
	It is useful for newcomers who may do not know about the Discord chat service."
	| model layout |
	model := self basicSpecModel.
	model assign: LabelModel new to: #discordInfo1.
	model assign: LabelModel new to: #discordInfo2.
	model assign: LabelModel new to: #discordInfo3.
	model discordInfo1 label: self discordInfoText asString lines first; centered.
	model discordInfo2 label: self discordInfoText asString lines second.
	model discordInfo3 label: self discordInfoText asString lines third.
	layout := model layout
		newRow: [ :row | row add: #discordInfo1 ] height: model class inputTextHeight / 2;
		newRow: [ :row | row add: #discordInfo2 ] height: model class inputTextHeight / 2;
		newRow: [ :row | row add: #discordInfo3 ] height: model class inputTextHeight / 2;
    	yourself.
	model layout.
	^ model