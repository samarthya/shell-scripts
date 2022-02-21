#!/bin/bash

for fn in * ; do
    S=${LIST:+,}     
    LIST="${LIST}${S}${fn@Q}:${#fn}"
done

echo "Element: ${#LIST} ${LIST}"

LIST=

for fn in $(ls -1) ; do
    S=${LIST:+,}     
    LIST="${LIST}${S}${fn@Q}:${#fn}"
done

echo "Element: ${#LIST} ${LIST}"

# ${var:-default}               Var if set, otherwise +default+
# ${var:-default}               Assign +default+ to +var+ if +var+ not already set
# ${var:?error_message}         Barf with +error_message+ if +var+ not set
# ${var:+replaced}              Expand to +replaced+ if +var+ _is_ set

# ${#var}                       Length of var
# ${!var[*]}                    Expand to indexes or keys
# ${!var[@]}                    Expand to indexes or keys, quoted

# ${!prefix*}                   Expand to variable names starting with +prefix+
# ${!prefix@}                   Expand to variable names starting with +prefix+, quoted

# ${var@Q}                      Quoted
# ${var@E}                      Expanded (better than `eval`!)
# ${var@P}                      Expanded as prompt
# ${var@A}                      Assign or declare
# ${var@a}                      Return attributes