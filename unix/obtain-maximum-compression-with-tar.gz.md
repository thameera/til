# Obtain maximum compression with .tar.gz files

This can be done by setting the `GZIP` env variable to `-9`.

```sh
GZIP=-9 tar czf out.tar.gz /path/to/source
```
