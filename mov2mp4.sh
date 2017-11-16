
# Just enter the name of the file ie: 'test' not 'text.mov'
ffmpeg -i $1.mov -vcodec copy -acodec copy $1.mp4