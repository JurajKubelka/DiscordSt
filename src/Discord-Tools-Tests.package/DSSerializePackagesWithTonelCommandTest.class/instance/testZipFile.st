tests
testZipFile
	| command result |
	command := self classToTest new.
	command packages: { self class package. self classToTest package }.
	result := command execute; zipFile.
	self assert: result notNil.
	self assert: result isFile.
	self assert: result extension equals: 'zip'.
	self deny: result size isZero.
	result ensureDelete.