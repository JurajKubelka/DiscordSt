accessing
text
	"Return a text message that should be sent to the Discord."
	^ text ifNil: [ text := self defaultText ]