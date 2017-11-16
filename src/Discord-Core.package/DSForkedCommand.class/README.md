I execute a command in a forked process. 
I do not catch any errors.
I do trigger onSuccess when the forked process is finished.

Public API and Key Messages

- command:		a command (that understand #execute) to be executed in a forked process
- onSuccess:		a block to be executed when the command finish successfully

Internal Representation and Key Implementation Points.

    Instance Variables
	command:		<DSCoreCommand>
	onSuccess:		<BlockClosure>
