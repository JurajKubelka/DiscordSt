initialization
initializeUsingJsonObject: json
	"Create new DSMessage instance.
	The DSMessage does not have to include all the data." 
	super initializeUsingJsonObject: json.
	self eventData: (DSMessage fromJsonObject: json)