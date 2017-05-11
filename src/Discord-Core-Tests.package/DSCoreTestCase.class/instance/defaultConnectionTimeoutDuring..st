mock
defaultConnectionTimeoutDuring: aBlock
	"Set connection timeout during aBlock execution"
	ZnConnectionTimeout value: 1 during: aBlock