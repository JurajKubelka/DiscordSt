I am responsible for downloading and materializing data from a Discord message. I can find the Discord message using an id (see the message loadId:). 

To find the message, an user has to be authenticated and a member of a specific guild (server). Currently, I do not search for an old message, but I should at some point.

I am supposed to be used during a loading script, e.g.,

{{{
Metacello new
    baseline: #DiscordSt;
    repository: 'github://JurajKubelka/DiscordSt:command-extensions/src';
    load.
 #DSLoadCommand asClassIfPresent: [ :theClass | theClass loadId: 'generated-id' ]. 
 }}}

Public API and Key Messages

- loadId: on the class side to all the job
 