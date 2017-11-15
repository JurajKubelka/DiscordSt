I order a collection of channels into a tree hierarchy (parent-children). 
Channel categories thus end up with channels that belongs to them. 
I expect only one level tree. It means, channel categories can contain only real channels, expluding other categories. 
I am useful as the Discord server sends all guild channels  in one collection. Each channel then indicates its parent. 

Public API and Key Messages

- channels collection of channels to order into parent-children hierarchy
- sortedChannels the root channels that includes their children channels

Internal Representation and Key Implementation Points.

    Instance Variables
	channels:			<Array>
	sortedChannels:		<Array>
