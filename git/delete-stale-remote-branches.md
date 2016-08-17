# Delete Stale Remote-tracking Branches

Even after a branch is deleted from the remote, it may still appear locally as
`remotes/<name>`. The following command prunes such stale remote branches.

    git remote prune origin

where `origin` is the name of the remote.
