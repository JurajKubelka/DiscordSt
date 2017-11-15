ui - http progress
displayHTTPProgress: labelString during: aBlock
	"Display a progress bar with a label while executing a block.
	It returns a result of the block."
	| result |
	UIManager default
		informUserDuring: [ :bar | 
			bar label: labelString asString.
			[ result := aBlock value ]
				on: HTTPProgress
				do: [ :progress | 
					progress isEmpty
						ifFalse: [ bar current: progress percentage.
							progress total
								ifNotNil: [ :aTotalNumber | 
									| humanReadable |
									humanReadable := self printHumanReadableBytes: aTotalNumber.
									bar label: labelString asString , ' (' , humanReadable , ')' ] ].
					progress resume ] ].
	^ result