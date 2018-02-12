execution
execute
	index := gifReader forms identityIndexOf: displayedForm.
	gifReader forms remove: displayedForm.
	gifReader delays removeIndex: index.