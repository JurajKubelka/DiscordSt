I am a Morph. 
I display a check box with checkbox button and label.
By hovering the label, a screenshot preview is displayed.
I am used for selecting images. So, a user can decide to selelect or not given image (screenshot). 

Public API and Key Messages

- screenshot:		set a Morph object that is considered to be selected
- isSelected:		set true or false to select or not the image
 
{{{
DSScreenshotMorph new
	screenshot: World submorphs atRandom;
	extent: 300@50;
	openInWindow.
}}}

Internal Representation and Key Implementation Points.

    Instance Variables
	isSelected:		<Boolean>
	screenshot:		<Morph>
