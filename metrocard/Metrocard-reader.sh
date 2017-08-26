#/usr/bin/bash
#
# Decode MTA MetroCard Raw And Parsed Data
# Version 1.1
# Written in 2017 by Linxin <.>
# wulinxin304115735@gmail.com
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
#
# Notes on input:
# A line that begins with a '#' is not processed and not printed
# A line that begins with a '%' is printed as a comment
#
clear


while true; do
CLEAR

echo ""
echo ""
echo "                                    ######################################"
echo "                                   #                                      #"
echo "                                   #  MTA Metrocard Decoding System V1.1  #"
echo "                                   #       Written in 2017 by Linxin      #"
echo "                                   #                                      #"
echo "                                    ######################################"
echo ""
echo ""
echo ""
echo ""
echo ""
read -n 1 -s -p "Press any key to Read..."
ECHO ""
python /Users/wulinxin/Desktop/metrocard/rcd.py
python /Users/wulinxin/Desktop/metrocard/dab.py /Users/wulinxin/Desktop/metrocard/metrocard.wav
python /Users/wulinxin/Desktop/metrocard/dab.py /Users/wulinxin/Desktop/metrocard/metrocard.wav | perl /Users/wulinxin/Desktop/metrocard/mcdecode.pl
read -n 1 -s -p "Press any key to Rread next card..."
done