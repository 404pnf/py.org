# Google text-to-speech in mp3 format

from Command-Line-Fu by sairon
11 people liked this
$ wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?tl=en&q=hello+world"

Works in any of 58 google supported languages (some sound like crap, english is the best IMO).

You get a mp3 file containing your query in spoken language. There is a limit of 100 characters for the "q" parameter, so be careful. The "tl" parameter contains target language.
