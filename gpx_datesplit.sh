FNIN="5351.gpx"
DBASE="2017-09-"
SRCH="C-Team"
for DAY in $(seq -w 03 29) ; do
    DSTR=$DBASE$DAY
	FNOUT=$DSTR.gpx
    head --lines 20      $FNIN | sed 's|name>'$SRCH'|name>'$DSTR'|' > $FNOUT
    grep $DSTR -B 2 -A 1 $FNIN >> $FNOUT
    tail --lines  3      $FNIN >> $FNOUT
done
