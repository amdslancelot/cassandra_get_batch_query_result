import re, sys

def parse(l):
    a = l.split("|")
    a_count = 0
    for e in a:
        a[a_count] = e.strip()
        a_count += 1
    return ",".join(a)

if len(sys.argv) != 2:
    print "[ERROR] Arguments length = %s. ex: %s" % ( len(sys.argv), "python select_result_to_csv.py aaa.txt" )
    exit(0)

with open(sys.argv[1]) as f:
    content = f.readlines()
    
    count = 0
    header = 0
    data_start = 0
    data_end = 0

    for l in content:
        #print count, "#", l, "#"

        # Get 'header' & 'data_start'
        if re.match( r'^[\-]+', l):
            header = count - 1
            data_start = count + 1

        # Get 'data_end'
        if re.match( r'\([0-9]+[ ]rows\)' , l):
            data_end = count

        count += 1
            
    #print parse(content[header])
    for n in range(data_start, data_end):
        print parse(content[n])
