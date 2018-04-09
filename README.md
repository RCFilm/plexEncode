# plexEncode
                            
#### Usage:
```
Plex DVR: Plex \ Settings \ Live TV & DVR \ DVR Settings \ Postprocessing Script = full path to the script

Shell:    plexEncode.sh <file> <encoder> <remove_original>
          <encoder>   = ffmpeg    # .mkv file output. modify $ffmpeg_options to your specs.
                      = handbrake # .m4v file output. modify $handbrake_options to your specs.
          <remove_original>   = 0 # keep original input file.
                              = 1 # delete original input file.

Sonarr:   plexEncode.sh <unused> <encoder> <remove_original> sonarr
          Settings \ Connect \ plexEncode \ Path = full path to the script
          On Download = yes
          On Upgrade = yes
          Arguments = x ffmpeg 1 sonarr

Radarr:   plexEncode.sh <unused> <encoder> <remove_original> radarr
          Settings \ Connect \ plexEncode \ Path = full path to the script
          On Download = yes
          On Upgrade = yes
          Arguments = x ffmpeg 1 radarr
```
#### Required:
Script to add handbrake/ffmpeg/mediainfo/etc packages to your plex/sonarr/radarr dockers; https://gist.github.com/scrathe/ba29e50d95f71bfb207ccf6f74a425a7

#### Shell Examples:
```
/media/scripts/plexEncode/plexEncode.sh "file" ffmpeg 0 # ffmpeg encoder, keep original input file
for i in *.ts; do /media/scripts/plexEncode/plexEncode.sh "$i" ; done # loop thru all *.ts files
```
