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

## Convert all files in folder to utf-8 using iconv
```bash
find . -type f -exec bash -c 'iconv -f iso-8859-1 -t utf-8 "{}" > /path/to/destination/"{}"' \;
```

## Find & Replace in Multiple Files
```bash
grep -rl "old_string" . | xargs sed -i 's/old_string/new_string/g'
```

 * grep -rl: search recursively, and only print the files that contain “old_string”
 * xargs: take the output of the grep command and make it the input of the next command (ie, the sed command)
 * sed -i ‘s/old_string/new_string/g’: search and replace, within each file, old_string by new_string
 * grep -r: --recursive, recursively read all files under each directory.
 * grep -l: --print-with-matches, prints the name of each file that has a match, instead of printing matching lines.
 * grep -i: --ignore-case.

 * xargs: transform the STDIN to arguments, follow this answer.
 * xargs -i@ ~command contains @~: a placeholder for the argument to be used in a specific position in the ~command~, the @ sign is a placeholder which could replaced by any     string.

 * sed -i: edit files in place, without backups.
 * sed s/regexp/replacement/: substitute string matching regexp with replacement.
 * sed s/regexp/replacement/g: global, make the substitution for each match instead of only the first match.

