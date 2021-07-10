BEGIN {
	if ( COVERAGE < COVERAGE_LEVEL ) {
		print "Coverage: FAIL" > "/dev/stderr";
		exit 1;
	} else {
		print "Coverage: PASS";
		exit 0
	}
}
