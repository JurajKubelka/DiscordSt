I represent a serialized Object. The object should be serialized using FUEL.

I also keep a description, and a inspector screenshot if possible. I know how to materialize the object.

DSSendObjectCommand uses me in order to send objects to Discord.

Public API and Key Messages

- serializedObject: - an object, serialized using FUEL   
- description: 	- description that explains a problem
- screenshot:		- a screenshot, e.g., GT-Inspector

{{{
DSObjectWrapper new
		serializedObject: #[ 1 2 3 4 ];
		description: 'This is a fake object that is not possible materialize';
		screenshot: World imageForm;
		yourself.
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	serializedObject:		<ByteArray>
