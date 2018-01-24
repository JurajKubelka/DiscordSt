updating
updateSettings
	"Load settings from the disk and update them in the image if they are not initialized."
	| tree nodes |
	tree := SystemSettingsPersistence default settingTree.
	nodes := tree deeplySelect: [ :node | node settingReceiver = self and: [ node realValue isEmptyOrNil ] ].
	SystemSettingsPersistence updateSettingNodes: nodes.
