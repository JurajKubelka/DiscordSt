baseline
baseline: spec
	<baseline>
	self externalProjects: spec.
	self corePackages: spec.
	self brickPackages: spec.
	self integrationPackages: spec.
	self researchPackages: spec.
	self downloaderPackages: spec.
	self groups: spec.