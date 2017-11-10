I am an abstract Discord Gateway process.

I know how to start and stop a process.
My subclasses have to know what to do during a one cycle (doCycle).

DSGatewayApiFive uses my subclasses in order to handle conversation with the Discord Gateway process.

DSGatewayApiFive has to provide me the WebSocket.

Public API and Key Messages

- start - start the process
- stop - stop the process
- websocket: set the WebSocket object used for the communication

Internal Representation and Key Implementation Points.

    Instance Variables
	canDoNextCycle:		<Boolean>
	mutex:		<Mutex>
	process:		<Process>
	websocket:		<WebSocket>


    Implementation Points