enumerating
keysAndValuesDo: twoArgBlock
	self includeInstanceVariables do: [ :messageSymbol | | value |
		value := self perform: messageSymbol.
		twoArgBlock value: messageSymbol value: value ]