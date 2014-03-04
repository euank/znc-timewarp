znc-timewarp
============

Let's do the time warp again

### What does it do?

This program alters a batch of znc logs forwards or backwards in time.
e.g. if you have some logs that you know are 5 minutes ahead, you could do
`ruby timewarp.rb -300 outdir/ user_network\#channel_*.log`
and it would move the logs back 300 seconds in time.

Public domain because I sure don't want to own this solely

### Problems

Known issues with timewarp are that it doesn't handle notices / join/part info
correctly. This is a problem with the log-parsing library I used (with how I
used it too).

timeshift.rb does everything correctly as far as I know. Its usage is a little
different because you give it an out template instead of an outdir e.g.
`outdir/user_network\#channel_`, but it's otherwise the same.
