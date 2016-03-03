# Change Field Separator In AWK

In `awk` the default field separator is whitespace. This can be changed by using the `-F` flag.

```sh
awk -F ',' '{print $2}'
```
