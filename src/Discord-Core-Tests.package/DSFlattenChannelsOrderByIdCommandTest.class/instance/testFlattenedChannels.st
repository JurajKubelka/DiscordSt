tests
testFlattenedChannels
	command := self classToTest new.
	command 
		channels: { 
			DSGuildTextChannel new
				position: 0;
				id: '4';
				name: 'Root';
				yourself.
			DSCategoryChannel new
				position: 1;
				id: '3';
				name: 'Category One';
				subordinateChannels: { 
					DSGuildVoiceChannel new
						position: 0;
						id: '1';
						name: 'In Category Voice';
						parentId: '3';
						yourself.
					DSGuildTextChannel new
						id: '2';
						position: 1;
						name: 'In Category Text';
						parentId: '3';
						yourself.
				 };
				yourself.
		 }.
	command execute.
	self assert: command flattenedChannels size equals: 4.
	self assert: command flattenedChannels first equals: command channels second subordinateChannels first.
	self assert: command flattenedChannels second equals: command channels second subordinateChannels second.
	self assert: command flattenedChannels third equals: command channels second.
	self assert: command flattenedChannels fourth equals: command channels first.
