I generate a unique file name.
The new file name has to be different from existingFileNames and includes extension.
I am useful for generating 'random' file names when it does not matter what file name is used.  
Public API and Key Messages

- extension: 			set file name extension (including dot)  
- existingFileNames	set a collection of existing file names
- fileName			new generated file name

Internal Representation and Key Implementation Points.

    Instance Variables
	existingFileNames:		<Array>
	extension:		<String>
	fileName:		<String>
