# how do i do a so-called podcast show

i have figured out most of stuff for niuniu-jianggushi at http://niuniu.rijiben.org

here's a note to myself and like minded:

microphone: shure 58, less then 900rmb gonna buy a shure 57 or small wireless

mix board: behringer, ub100b or sth, 6 tracks less then 800rmb

we use audacity for recording, export to wave file

an iriver t10 or ifp890 is always on recording mode at the desk, so even if the computer recording failed, iriver will save the day.

use lame to encode to mp3s

> lame -b 64 --resample 44 --tt "niuniu-jianggushi" --ta "niuniu" --tl "http://niuniu.rijiben.org" --ty 2007 --tc "released under creative commons attribution-sharealike license; go to http://niuniu.rijiben.org for more information" --tg "speech"

use http://archive.org to store the files. i trust archive.org, their integrity and service. it's free, as in zero cost, by the way :)

from LI xin

how to encode all wav files in a dir

      ls *.wav | xargs -n 1 lame ....

that's number one after -n, not an L .

how do batch change file names in a dir, e.g

change 1.wav.mp3 2.wav.mp3 etc to 1.mp3 2.mp3

      ls *.wav.mp3 | sed -e 's/^\(.*\).wav.mp3$/mv \1.wav.mp3 \1.mp3/g' | sh

i don't understand these commands and regular expression but they got the work done :)

thanks li xin, i know him as a freebsd committer, visit his website: http://www.delphij.net 

please support [freebsd](http://www.freebsd.org/), a free (speech) operating system.

if you wonder how can i get individual support from him, here's the deal: 

donate to freebsd project, then he is willing to help you, too :) 

show some love, y'all


2007-04-06