testing
hasExpertiseQuestion
	^ self message notNil and: [ 
		self message content notNil and: [ 
			self message content 
				includesSubstring: self questionPattern
				caseSensitive: false ] ]