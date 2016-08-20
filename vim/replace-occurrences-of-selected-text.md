# Replace All Occurrences of Selected Text

Press `y`. Then enter:

```vim
:%s/<c-r>"/new text/g`.
```

**Explanation**

* `y` copies the visual selection.
* `<c-r>"` pastes the contents of clipboard to ex command.

[Source](https://www.reddit.com/r/vim/comments/19sm9v/replace_all_instances_of_currently_highlighted/c8qy2ax)
