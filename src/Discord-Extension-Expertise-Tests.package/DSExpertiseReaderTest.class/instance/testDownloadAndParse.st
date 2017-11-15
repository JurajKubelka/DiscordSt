tests-protocol
testDownloadAndParse
	"Require an internet connection."
	| data |
	data := self classToBeTested downloadAndParse.
	self assert: data notNil.
	self assert: data class equals: DSExpertisePackages.
	self assert: data notEmpty.
	self assert: data anyOne class equals: DSExpertisePackage.
	self assert: data anyOne package notNil.
	self assert: data anyOne expertise notNil.
	self assert: data anyOne expertise isCollection.
	self assert: data anyOne expertise notEmpty.
	self assert: data anyOne expertise anyOne developer notNil.
	self assert: data anyOne expertise anyOne coeficient notNil.
	self assert: data anyOne expertise anyOne coeficient isNumber.
