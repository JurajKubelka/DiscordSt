protocol
loadId: idString
	"Download and materialize data attached to a specific message, identified by idString.
	It returns the Discord message that holds the data."
	^ self new
		client: DSClient default;
		fuelId: idString;
		forkedExecution.