private
setFileName
	self fileName: (self object printStringLimitedTo: DSConstants maxFileNameLenght - 14), '.fuel'