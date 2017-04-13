enumerating
keysAndValuesDo: twoArgBlock
	self includeInstanceVariables do: [ :messageSymbol | | value key |
		value := self perform: messageSymbol.
		key := self apiFieldForMessageSymbol: messageSymbol.
		twoArgBlock value: key value: value ]