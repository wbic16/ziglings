LAST_ZIGLING=""
if [ -f .last-zigling ]; then
	LAST_ZIGLING=`cat .last-zigling`
	rm -f .last-zigling
fi
../zig build
EXPECTED=`../zig build 2>&1 |tail -1 |sed 's/^Edit //g' |sed 's/\.zig .*$/.zig/g'`
if [ "x${EXPECTED}y" != "x${LAST_ZIGLING}y" ]; then
	git push
fi
if [ -f $EXPECTED ]; then
	vim $EXPECTED
fi
echo $EXPECTED >.last-zigling
../zig build
git add exercises
git status
