converting
asForm
	"Download data if necessary and convert to Form object."
	| aStream |
	aStream := self data ifNotNil: #readStream ifNil: [ ^ Form extent: 50 @ 50 ].
	^ ImageReadWriter formFromStream: aStream 