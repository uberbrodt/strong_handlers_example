# StrongHandlersExample

Application that demonstrates the following problem:

If event handlers with `:strong` consistency run on multiple nodes, a command
dispatch with `:strong` consistency will timeout. The behaviour seems to be that
whatever the first subscription is will ack the caller, and event handlers
running on the same node as that first one will ack, but any running on a
separate node never do.

## How to use

```
$ ./start_node1
$ ./start_node2
$ ./start_node3

# Should distribute event handlers between the nodes. Check the subscriptions to
# make sure they didn't start all on the same nodes, otherwise you won't be able
# to replicate the problem.

iex(node1@127.0.0.1)1> StrongHandlersExample.run_strong_cmd()
```
