private
setFileName
	"Remove unsafe characters and limit the filename lenght."
	self fileName: (DSUtility safeFileName: self object)