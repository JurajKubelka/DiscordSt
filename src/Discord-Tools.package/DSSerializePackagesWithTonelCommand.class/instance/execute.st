execute
execute
	| command |
	command := DSSerializePackageWithTonelCommand new.
	self packages do: [ :eachPackage | 
		command package: eachPackage.
		command execute ].
	self directory: command directory parent.