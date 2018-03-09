#! /bin/sh

# SYNOPSIS
#     play_radiru.sh {sapporo|sendai|tokyo|nagoya|osaka|hiroshima|matsuyama|fukuoka} {r1|r2|fm} [-h]"
#
# EXAMPLE
#     $ ./play_radiru.sh tokyo r1
#
# NOTES
#     音が出るまで数秒から数十秒かかります。
#     内部でffmpge,mplayerを呼び出しています。別途ご用意ください。
# 
# Last update 2018/03/09

BAD_CHANNEL_MSG="Error: Unknown channel argument."
USAGE="Usage: play_radiru.sh {sapporo|sendai|tokyo|nagoya|osaka|hiroshima|matsuyama|fukuoka} {r1|r2|fm} [-h]"

if test $# = 1; then
    if test $1 = "-h" -o $1 = "--help" ; then
	echo $USAGE
	exit 0
    else
	echo "Error: Unknown argument."
	echo $USAGE
	exit 2
    fi
fi


if test $# != 2; then
    echo "Error: Too few arguments."
    echo $USAGE
    exit 2
fi


if test $1 = "sapporo"; then

    if test $2 = "r1"; then
	URL="http://nhkradioikr1-i.akamaihd.net/hls/live/512098/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradioikfm-i.akamaihd.net/hls/live/512100/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "sendai"; then

    if test $2 = "r1"; then
	URL="http://nhkradiohkr1-i.akamaihd.net/hls/live/512075/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradiohkfm-i.akamaihd.net/hls/live/512076/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "tokyo"; then

    if test $2 = "r1"; then
	URL="http://nhkradioakr1-i.akamaihd.net/hls/live/511633/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradioakfm-i.akamaihd.net/hls/live/512290/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "nagoya"; then

    if test $2 = "r1"; then
	URL="http://nhkradiockr1-i.akamaihd.net/hls/live/512072/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradiockfm-i.akamaihd.net/hls/live/512074/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "osaka"; then

    if test $2 = "r1"; then
	URL="http://nhkradiobkr1-i.akamaihd.net/hls/live/512291/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradiobkfm-i.akamaihd.net/hls/live/512070/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "hiroshima"; then

    if test $2 = "r1"; then
	URL="http://nhkradiofkr1-i.akamaihd.net/hls/live/512086/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradiofkfm-i.akamaihd.net/hls/live/512087/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "matsuyama"; then

    if test $2 = "r1"; then
	URL="http://nhkradiozkr1-i.akamaihd.net/hls/live/512103/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradiozkfm-i.akamaihd.net/hls/live/512106/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

elif test $1 = "fukuoka"; then

    if test $2 = "r1"; then
	URL="http://nhkradiolkr1-i.akamaihd.net/hls/live/512088/1-r1/1-r1-01.m3u8"
    elif test $2 = "r2"; then
        URL="http://nhkradioakr2-i.akamaihd.net/hls/live/511929/1-r2/1-r2-01.m3u8"
    elif test $2 = "fm"; then
        URL="http://nhkradiolkfm-i.akamaihd.net/hls/live/512097/1-fm/1-fm-01.m3u8"
    else
	echo $BAD_CHANNEL_MSG; echo $USAGE; exit 2;
    fi

else
    echo "Error: Unknown area argument."
    echo $USAGE
    exit 2
fi

#
ffmpeg -i ${URL} -vn -acodec copy pipe:1.ts -loglevel quiet\
 | \
mplayer -vo null -msglevel all=0 -cache 128 -cache-min 5 -

