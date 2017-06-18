I represent a mock command extension, used for a testing purpose.
The test cases mainly test the command extension registration and execution process.

Users can set pre- and post- execution blocks to evaluate if the pre- and post- execution happens.

Public API and Key Messages

- preExecutionBlock: set a pre-execution block that will be evaluate during pre-execution cycle
- postExecutionBlock: set a post-execution block that will be evaluate during post-execution cycle

Internal Representation and Key Implementation Points.

    Instance Variables
	postExecutionBlock:		<BlockClosure>
	preExecutionBlock:		<BlockClosure>
