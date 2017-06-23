ui
specModelWithoutToolbar
	"Get Spec model that represents a dialog where someone can write email and password."
	| model layout |
	model := self specModelWithDiscordInfo.
	model assign: ButtonModel new to: #loginButton.
	model loginButton label: 'Login to Discord Chat'.
	model loginButton action: [ self sendAction value: model ].
	model extent: 400 @ (model class inputTextHeight * 4.2).
	layout := model layout
		newRow: [ :row | row add: #loginButton ] height: model class inputTextHeight;
    	yourself.
	model layout: layout.
	^ model