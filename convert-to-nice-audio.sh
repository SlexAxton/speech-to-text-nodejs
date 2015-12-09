#! /usr/bin/env bash

ffmpeg -i "$1.mp3" -acodec pcm_s16le -ac 1 -ar 16000 "$1-tmp-out-16.wav"
ffmpeg -i "$1-tmp-out-16.wav" -c:a flac "$1.flac"
