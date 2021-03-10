## recursively find all files inside current directory and call for these files dos2unix command
```bash
find . -type f -print0 | xargs -0 dos2unix
``` 

## Remove trailing whitespace
```bash
find . -type f -print0 | xargs -0 sed --in-place 's/[[:space:]]\+$//'
```

## Charset conversion eg. big5 to utf-8 by command line tool 
```bash
iconv -f BIG-5 -t UTF-8 filename > newfile
```

