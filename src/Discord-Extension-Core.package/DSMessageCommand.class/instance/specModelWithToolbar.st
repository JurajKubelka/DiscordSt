ui
specModelWithToolbar
	"Get Spec model that represents a dialog where someone can choose Discord channel and write message.
	This model includes a toobar with Send and Cancel buttons that closes the UI on click."
	model := self specModelWithExtensions.
	model assign: OkCancelToolbar new to: #toolbar.
	model toolbar okButton label: 'Send'.
	model toolbar okAction: [ self sendActionBlock value: model ].
	model layout
		newRow: [ :row | row add: #toolbar ] 
		height: model class inputTextHeight.
	^ model