execute
execute
	| snapshot writer |
	snapshot := (MCPackage new name: self package name) snapshot.
	writer := TonelWriter on: fileSystem workingDirectory.
	writer writeSnapshot: snapshot.
	self directory: writer packageDir.