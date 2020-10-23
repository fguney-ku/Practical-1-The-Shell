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

# change the mod to be executable
# the who values
  # u: user (owner of the file)
  # g: group
  # o: others
  # a: all
  # default: all
# the what values
  # –: removes the permission
  # +: grants the permission
  # =: set only this permission
# the which values
  # r: read permission
  # w: write permission
  # x: execute permission

chmod +x semester

# also possible to use digits:
# 0: (000) No permission.
# 1: (001) Execute permission.
# 2: (010) Write permission.
# 3: (011) Write and execute permissions.
# 4: (100) Read permission.
# 5: (101) Read and execute permissions.
# 6: (110) Read and write permissions.
# 7: (111) Read, write, and execute permissions.

# run semester
# More info on sh: https://en.wikipedia.org/wiki/Bourne_shell
./semester

# grep -i for ignore case
# cut -d for using ' ' as delimeter
# cut -f for fields
# cut N- from Nth to the end
./semester | grep -i "last-modified" | cut -d ' ' -f 2- > last-modified.txt