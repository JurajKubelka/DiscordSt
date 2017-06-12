private
initializeUsingJsonObject: json
	"Create new DSMessage instance" 
	super initializeUsingJsonObject: json.
	self eventData: (DSMessage fromJsonObject: self eventData)