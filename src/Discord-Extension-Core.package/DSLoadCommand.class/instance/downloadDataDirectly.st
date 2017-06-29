private
downloadDataDirectly

	| data joinedBytes object |
	self decodeUrls.
	data := self urls collect: [ :eachUrl | self downloadFileFrom: eachUrl ].
	joinedBytes := self joinBytes: data.
	object := self materializeBytes: joinedBytes.
	^ self displayToUser: object.