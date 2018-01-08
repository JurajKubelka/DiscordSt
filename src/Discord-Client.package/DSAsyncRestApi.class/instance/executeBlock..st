private
executeBlock: aBlock
	(DSBlockCommand new 
		block: aBlock;
		async)
			onSuccess: self onSuccess;
			onError: self onError;
			execute