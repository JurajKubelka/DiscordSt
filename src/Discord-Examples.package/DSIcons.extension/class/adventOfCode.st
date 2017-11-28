*Discord-Examples
adventOfCode
	<gtExample>
	<label: 'Advent Of Code 16x16 https://adventofcode.com'>
	^ self icons 
		at: #adventOfCode 
		ifAbsentPut: [ self formFromBase64Png: #adventOfCodePNGBase64 ]