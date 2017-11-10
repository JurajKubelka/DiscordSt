private
sendIdentifyCode
	"Send the OP 2 Identify message to a Discord Gateway."
	self api ifNotNil: #sendIdentifyCode