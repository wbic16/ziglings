../zig build
EXPECTED=`../zig build 2>&1 |tail -1 |sed 's/^Edit //g' |sed 's/\.zig .*$/.zig/g'`
if [ -f $EXPECTED ]; then
	vim $EXPECTED
else
	../zig build
fi
