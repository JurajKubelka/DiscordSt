I represent an abstract command extension.
I can be registered to a DSCommand using a pragma <dsCommandExtensions> as the following example:

{{{
DSMessageCommand >> #registerMyMockExtension
	<dsCommandExtensions>
	^ Array with: DSCommandExtension new.
}}}

My subclasses should implement postExecution: and preExecution: methods that are sent by commands before and after main execution cycles.
