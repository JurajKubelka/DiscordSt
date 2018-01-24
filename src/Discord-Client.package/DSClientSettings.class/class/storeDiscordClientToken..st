updating
storeDiscordClientToken: aString 
	"Store new token for the default client."
	| tree node |
	tree := SystemSettingsPersistence default settingTree.
	node := tree deeplyDetect: [ :eachNode | eachNode settingReceiver = self and: [ eachNode settingDeclaration name = #discordClientToken ] ].
	self discordClientToken: aString.
	node saveToDisk.