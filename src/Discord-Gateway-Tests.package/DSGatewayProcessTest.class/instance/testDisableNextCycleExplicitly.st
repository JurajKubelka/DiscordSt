tests
testDisableNextCycleExplicitly
	"Next Cycle is not allowed explicitly"
	process := self newGatewayProcess.
	process disableNextCycle.
	self deny: process canDoNextCycle.
	