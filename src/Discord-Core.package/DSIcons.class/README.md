I keep icons used inside of the Discord library.

You can create a Base64 representation of an PNG file using the following code:

{{{
('icon.png' asFileReference 
	binaryReadStreamDo: [ :s | s upToEnd ]) base64Encoded.
}}}
