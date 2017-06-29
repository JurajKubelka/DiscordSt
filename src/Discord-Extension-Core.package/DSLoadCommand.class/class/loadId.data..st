protocol
loadId: idString data: base64String
	"Download and materialize data attached to a specific message, identified by idString.
	If base64String is present, then it download the data directly.
	Otherwise it requieres an authenticated Discord client in order to find corresponding messages."
	^ self new
		client: DSClient default;
		encodedUrls: base64String;
		encodedFuelId: idString;
		forkedExecution.