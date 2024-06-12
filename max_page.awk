BEGIN {max_page=0}
/"pagination":{"/ {
	split($0, ar, /"total"/)
	split(ar[2], ar1, /,/)
	    gsub("\r", "", ar1[1])
        gsub("[^0-9]", "", ar1[1])
        max_page=ar1[1]
}

END{
        print ""max_page""
}