private
sendIdentifyCodeAfterAWhile
	"It's also possible that your client cannot reconnect in time to resume, 
	in which case the client will receive a OP 9 Invalid Session and 
	is expected to wait a random amount of time (between 1 and 5 seconds), 
	then send a fresh OP 2 Identify."
	5 atRandom seconds wait. 
	self sendIdentifyCode.