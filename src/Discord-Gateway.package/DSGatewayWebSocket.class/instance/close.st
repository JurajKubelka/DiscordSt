initialize-release
close
	"Close the connection"
	self websocket ifNotNil: #close