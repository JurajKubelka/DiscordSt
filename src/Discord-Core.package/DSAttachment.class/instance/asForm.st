converting
asForm
	"Download data if necessary and convert to Form object."
	| aStream |
	aStream := self data readStream.
	^ ImageReadWriter formFromStream: aStream 