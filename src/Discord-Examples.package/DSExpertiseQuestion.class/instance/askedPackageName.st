accessing - computed
askedPackageName
	"Return package name."
	<return: #String>
	| index |
	index := self message content
		skipAnySubstring: { self questionPattern }
		startingAt: 1.
	^ (self message content allButFirst: index - 1) reject: [ :e | e isLetter not ].