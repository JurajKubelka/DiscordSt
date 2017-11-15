converting
asForm
	"Download data if necessary and convert to Form object."
	| aStream |
	aStream := self data ifNotNil: #readStream ifNil: [ ^ nil ].
	^ ImageReadWriter formFromStream: aStream 