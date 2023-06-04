#!/bin/bash
url=$(ytfzf -DL)
mpv --ytdl-format=bestvideo+bestaudio/best "$url"
