tests
testSort
	command := self classToTest new.
	command 
		channels: { 
			DSGuildTextChannel new
				id: '567';
				position: 1;
				name: 'In Category Text';
				parentId: '123';
				yourself.
			DSGuildVoiceChannel new
				position: 0;
				id: '890';
				name: 'In Category Voice';
				parentId: '123';
				yourself.
			DSCategoryChannel new
				position: 1;
				id: '123';
				name: 'Category One';
				yourself.
			DSGuildTextChannel new
				position: 0;
				id: '345';
				name: 'Root';
				yourself.
		 }.
	command execute.
	self assert: command sortedChannels size equals: 2.
	self assert: command sortedChannels first equals: command channels fourth.
	self assert: command sortedChannels second equals: command channels third.
	self assert: command sortedChannels second subordinateChannels size equals: 2.
	self assert: command sortedChannels second subordinateChannels first equals: command channels second.
	self assert: command sortedChannels second subordinateChannels second equals: command channels first.
