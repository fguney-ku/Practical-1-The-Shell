echo 'Hello World'

$SHELL

mkdir practicals
touch --help

touch practicals/semester

cd practicals

# https://en.wikipedia.org/wiki/Shebang_(Unix)

echo '#!/bin/sh' > semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester

sh semester

chmod --help

chmod +x semester

./semester

./semester | grep -i "last-modified" | cut -d ' ' -f 2- > last-modified.txt