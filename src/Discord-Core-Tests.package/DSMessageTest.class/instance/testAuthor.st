tests
testAuthor
	| author |
	message := self newMessage.
	author := self newUser.
	message author: author.
	self assert: message author equals: author.