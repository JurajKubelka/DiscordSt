initialization
initializeProcess
	process := [ [ self canDoNextCycle ] whileTrue: [ self doCycle ] ]
		forkAt: Processor userBackgroundPriority
		named: self printProcessName