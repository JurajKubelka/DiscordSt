announcements-registration
onSendDo: oneArgBlock
	"Register an action is performed on send button click.
	oneArgBlock receives announcement (symbol)."
	self onAnnouncement: #sendAction do: oneArgBlock