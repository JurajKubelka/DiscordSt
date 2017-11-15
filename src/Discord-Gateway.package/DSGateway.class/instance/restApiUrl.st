accessing
restApiUrl
	"Return a root Discord API URL."
	<return: #ZnUrl>
	^ restApiUrl ifNil: [ restApiUrl := DSConstants defaultRestApiSixUrl ]