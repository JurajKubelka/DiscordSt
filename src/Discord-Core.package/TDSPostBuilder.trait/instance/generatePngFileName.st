private
generatePngFileName
	"Return a unique file name with PNG extention."
	<return: #String>
	^ self generateFileNameWithExtension: '.png'