I know how to login to a DSClient. 
If the client is not authenticated, I open a dialog and ask user for email and password. After accept, I send login message to the client.

The other commands can call me in order to ensure that the client is logged.

Public API and Key Messages

- client:  			- set a DSClient object
- execute 		- ask for credentials and perform login action
- waitForAnswer 	- if my caller needs to wait for the login, he should call this message.

{{{
DSLoginCommand new
	client: DSClient new;
	execute.
}}}
 
Internal Representation and Key Implementation Points.

    Instance Variables
	semaphore:		<Semaphore>
