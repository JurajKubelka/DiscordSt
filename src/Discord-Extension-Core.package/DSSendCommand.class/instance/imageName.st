accessing
imageName
	"Return a string that represents filename for an attached debugger screenshot."
	^ (self fileName includesSubstring: '.fuel')
		ifTrue: [ (self fileName allButLast: 5), '.png' ]
		ifFalse: [ self fileName, '.png' ]