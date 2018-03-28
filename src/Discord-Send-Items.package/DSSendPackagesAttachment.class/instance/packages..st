accessing
packages: aCollection
	aCollection do: [ :each | each isEnabled: self isSelected ].
	packages := aCollection