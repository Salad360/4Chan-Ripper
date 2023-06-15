#! /bin/bash

# ==Original synopsis of used wget flags==
# -r downloads files recursively, downloading links that are contained in already downloaded documents. This is essential because a common case is one url that contains all image file links.
# -l [n] controls the maximum recursion level. n will practically always be one for image scraping.
# -H allows downloads from different hosts than the original url. This is useful because many sites show images hosted at different domains.
# -D [domains] tells what additional hosts to download from. You will probably have to 'View Source' in your browser to know for sure what to put here. domains is a comma separated list of domain names.
# -P [prefix directory] tells where to save the downloaded files. The default is the current directory.
# -nd avoids creating additional hierarchy.
# -A [extensions] tells what file extensions to save.




echo "4chan ripper by Taylor Pinkham v1.0"
echo "Enter thread URL"
read URL
echo "Enter image/video type(s) to rip. Multiple types should be comma seperated with no spaces eg. webm,gif,jpg"
echo "Any file extension is valid; if it can be uploaded to 4chan, this tool can download it."
read TYPE
echo "Enter path to save content (default is $PWD)"
read P
if [ "$P" = "" ]
then
	wget -nd -r l 1 -H -D i.4cdn.org -A $TYPE $URL
# i.4cdn.org seems to host files uploaded by anons to 4chan
else
	wget -nd -P $P -r l 1 -H -D i.4cdn.org -A $TYPE $URL
fi
if [ "$P" = "" ]
then
	echo "Done. Media saved to current directory ($PWD)"
else
	echo "Done. Media saved to $P"
fi
echo "Have a nice day...or wank."
exit 0