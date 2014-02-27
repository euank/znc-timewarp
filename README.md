znc-timewarp
============

Let's do the time warp again

### What does it do?

This program alters a batch of znc logs forwards or backwards in time.
e.g. if you have some logs that you know are 5 minutes ahead, you could do
`ruby timewarp.rb -300 outdir/ user_network\#channel_*.log`
and it would move the logs back 300 seconds in time.

Public domain because I sure don't want to own this solely
