## recursively find all files inside current directory and call for these files dos2unix command
```bash
find . -type f -print0 | xargs -0 dos2unix
``` 

## Remove trailing whitespace
```bash
find . -type f -print0 | xargs -0 sed --in-place 's/[[:space:]]\+$//'
```