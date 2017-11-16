I flatten a tree hierarchy to a collection of channels. 
The flattened collection ends up with all channels and categories.
The flattened collection keeps the same order os the original collection.
I expect only one level tree. It means, channel categories can contain only real channels, expluding other categories. 
I complement DSSortChannelsCommand.
I am useful for displaying channels in a list.

Public API and Key Messages

- channels collection of channels to flattern
- flattenedChannels all channels in one collection, including the channels in category

Internal Representation and Key Implementation Points.

    Instance Variables
	channels:				<Array>
	flattenedChannels:		<Array>
