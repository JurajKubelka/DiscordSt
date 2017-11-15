private
disableNextCycle
	"Explicitly disable sending heartbeat messages.
	Useful, if you want to close the Discord Gateway connection."
	canDoNextCycle := false.