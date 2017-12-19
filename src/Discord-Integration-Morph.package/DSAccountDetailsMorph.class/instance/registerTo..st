private
registerTo: aDSClientRegistry 
	"Register to changes (announcements)."
	aDSClientRegistry accept: (DSAccountDetailsSubscribeRequest new
		morph: self;
		yourself)