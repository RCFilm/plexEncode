#!/bin/bash

echo "This is the wrapper script, it will exec "$ffmpeg""

exec /usr/bin/ffmpeg ./ffmpeg "$@"
