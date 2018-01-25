execute
execute
	| repository mcPackage workingCopy newVersion |
	repository := TonelRepository new directory: fileSystem workingDirectory.
	mcPackage := MCPackage named: self package name.
	workingCopy := MCWorkingCopy forPackage: mcPackage.
	newVersion := workingCopy
		newVersionWithName: (workingCopy uniqueVersionNameIn: repository) 
		message: self message 
		in: repository.
	repository storeVersion: newVersion.
	repository storeDependencies: newVersion.
	self directory: repository directory.