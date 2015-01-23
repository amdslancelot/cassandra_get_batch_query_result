import re, sys

def get_token(l):
    a = l.split("|")
    if len(a) == 0:
        return ''

    a_count = 0
    for e in a:
        a[a_count] = e.strip()
        a_count += 1
    return a[0]

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
            
    for n in range(data_start, data_end):
        print get_token(content[n])
