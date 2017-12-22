announcements-registration
onCancelDo: oneArgBlock
	"Register an action is performed on cancel button click.
	oneArgBlock receives announcement (symbol)."
	self onAnnouncement: #cancelAction do: oneArgBlock