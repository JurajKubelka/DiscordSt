cleanup
reset
	collector ifNotNil: [ :aCollector | aCollector release. collector := nil. ].
	uniqueInstance := nil.