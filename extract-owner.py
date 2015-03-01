import sys
import re

#
#total = 1234567890
#Example output:
# Initial:
#    /O '(\x00\xe5P}\xab\xd1\x8b\xe0\xaa\\r\x9fLp`|\x0f\xa1\x83\xba\x9c\xf5\xe5\x03\x02jRC\x19\xb5\xe7u\xf8)'
#
# Next removing delimeters:
# \x00\xe5P}\xab\xd1\x8b\xe0\xaa\\r\x9fLp`|\x0f\xa1\x83\xba\x9c\xf5\xe5\x03\x02jRC\x19\xb5\xe7u\xf8
#
# Now we want to split on \x, substitute it to "" and convert characters like 5P} to ord(char).
re_hex = re.compile(r"\\x[0-9A-Fa-f]{2}", re.DOTALL)
re_hexleader = re.compile(r"\\x", re.DOTALL)
re_hex_and_stragglers = re.compile(r"\\x(.*?)", re.DOTALL)

#searchfile = open("parsed-pdf_object180.txt", "r")
#parsed-pdf_cust-pass.txt
searchfile = open(argv[1], "r")

bytestring = ""
for line in searchfile:
    line.strip()
    if "/O" in line: 
        #At a minimum we want a line with 32 length password
        if len(line) < 43:
            continue
        
        print line
        line2 = line[9:-3]
        print line2
        entries = re.split(re_hexleader, line2)
        #entries = re.split(re_hex, line2)
        print entries
        
        #print ord("\x59")
        print len(entries)
        for chars in entries:
            if(len(chars) >= 2):
                bytestring += chars[:2]
                for char in chars[2:]:
                    #Force to 2hex 
                    bytestring += "{:02x}".format(ord(char))
        
        #bytestring = "".join("{:02x}".format(ord(c)) for c in line2)
        print bytestring
        print len(bytestring)/2
        
        break
    
    
    
searchfile.close()