echo "" > dump.txt && for i in ` ls PDFs/*pdf ` ; do  echo $i ; pdftotext $i - >> dump.txt; done
iconv -c -f LATIN1 -t UTF-8 dump.txt > newdump.txt
mv newdump.txt dump.txt
wordcloud_cli --imagefile dot-lab.png  --stopwords stopwords.txt --text dump.txt --width 2048 --height 2048 --background white --color black
