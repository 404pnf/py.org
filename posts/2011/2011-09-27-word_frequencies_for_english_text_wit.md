# word frequencies for english text with only bash tools


> Generate list of words and their frequencies in a text file.
> from Command-Line-Fu by minduim
> 1 person liked this
> 
> 	$ tr A-Z a-z | tr -d "[[:punct:]][[:digit:]]" | tr ' /_' '\n' | sort | uniq -c

2011-09-27
