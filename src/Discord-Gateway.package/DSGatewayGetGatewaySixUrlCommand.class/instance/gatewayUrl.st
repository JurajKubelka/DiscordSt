accessing
gatewayUrl
	"Return Gateway URL.
	See https://discordapp.com/developers/docs/topics/gateway#get-gateway"
	<return: #ZnUrl>
	^ self restApiUrl / 'gateway'