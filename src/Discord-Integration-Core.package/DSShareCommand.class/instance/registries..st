accessing
registries: aDSRegistries
	self assert: [ aDSRegistries notNil ] description: 'It has to be a DSRegistries object'.
	registries := aDSRegistries