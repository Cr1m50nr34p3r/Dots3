import os
import sys
import re

args = sys.argv[1:]
try:
    filename = [arg for arg in args if os.path.isfile(arg)][0]
except IndexError:
    print("Not a valid file")
    exit()
    
with open(filename, "r") as file:
    read_file = file.read()
    colorvariables = re.findall('(.+.+)=*.*#',read_file)
    hexcolors = re.findall(
            '.+.+=*.+#([a-fA-F0-9]{6})',
            read_file)

    for color in range(len(colorvariables)-1):
        try:
            print(colorvariables[color].strip(),
                  hexcolors[color], end="")
            os.system('''
show_colour() {
    perl -e 'foreach $a(@ARGV){print "\e[48:2::".join(":",unpack("C*",pack("H*",$a)))."m \e[49m "};print' "$@"
}
show_colour "'''+hexcolors[color]+'"')
            print()
        except IndexError:
            pass

