# Ignore Grep Process In Process List

When we want to list the processes and grep for a specific process, the `grep`
process also shows up. The common workaround for this is something like:

```sh
ps -ef | grep -v grep | grep command
```

However, the same can be easily achieved by wrapping the first letter of
command in brackets.

```sh
ps -ef | grep [c]ommand
```
