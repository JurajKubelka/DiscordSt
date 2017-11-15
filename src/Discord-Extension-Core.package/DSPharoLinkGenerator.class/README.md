I generate URL links that are part of DSMessage fields (DSEmbedField).
The links is composed of a necessary information to be able to find a corresponding messages and download serialized data.  The encoded information is part of an URL as queries.

I know how to encode and decode such links. 

I collaborate with DSSendCommand that needs the URL link to compose a message with serialized FUEL data.

I collaborate with DSLoadCommand that needs to decode a given URL link in order to download and materialize FUEL data.

Public API and Key Messages for the URL encoding

- channel:			- set channel id where an user message is about to be sent
- fuelValue:			- set a FUEL embed field value, e.g., as Object or Stack
- previousMessages:	- set a collection of DSMessage objects that keep the serialized FUEL attachments 
- generate			- return Markdown string with the corresponding URL link

Public API and Key Messages for the URL encoding

- decodeData:	- return a collection of URLs that points to binary files that holds the serialized FUEL objects
- decodeFuelId:	- return a FueldId object with decoded information, see FuelId class for more information
 
Internal Representation and Key Implementation Points.

    Instance Variables
	channel:				<DSGuildChannel>
	fuelValue:			<String>
	previousMessages:	<Array>
	url:					<ZnUrl>
