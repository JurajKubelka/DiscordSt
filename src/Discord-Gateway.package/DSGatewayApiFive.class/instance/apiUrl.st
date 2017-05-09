accessing
apiUrl
	"Return root URL used for Discord Gateway communication."
	^ apiUrl ifNil: [ apiUrl := self defaultApiUrl ]