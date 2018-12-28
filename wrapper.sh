#!/bin/bash

echo "This is the wrapper script, it will exec "$@"

exec ./plexEncode.sh "$@"

exit
#End
