cd "$1/poppler-21.03.0/Library/bin"
for file in "${@:2}";
do
	FILES="$file/*.pdf";
	echo $FILES
	for f in $FILES;
	do
		mv "$f" "${f// /}"
		pdftotext "${f}"
	done
done
echo "done"
