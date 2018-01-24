updating
storeDiscordClientSession: aDSClient 
	"Store all settings but password on a local disk."
	| tree nodes |
	tree := SystemSettingsPersistence default settingTree.
	nodes := tree deeplySelect: [ :node | 
		node settingReceiver = self and: [ 
			(node settingDeclaration name = #discordClientPassword) not ] ].
	self discordClientEmail: aDSClient email.
	self discordClientPassword: aDSClient password.
	self discordClientToken: aDSClient token.
	SystemSettingsPersistence storeSettingNodes: nodes.