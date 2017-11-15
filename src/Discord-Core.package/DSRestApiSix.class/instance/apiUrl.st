accessing
apiUrl
	"Return root URL used for Discord communication."
	^ apiUrl ifNil: [ apiUrl := DSConstants defaultRestApiSixUrl ]