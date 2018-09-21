# MTA Metrocard Reader

This program allows a person to read a New York MTA metro card. The program was originally made by sephail a few years ago. Around 2017, Linxin took a interest in the program and updated it to its current version today.  Later on, mantie uploaded the program to github. Later still, MyriaCore ported it to windows using VBScripts. This program is for research and educational purposes only. 

### About this fork
This fork is an attempt to port this repo to windows by rewriting all of the bash scripts as VBScripts. Functionality provided by `mcdecode.pl` such as the decoding and interpretation of MetroCard information has not yet been successfully ported.


### Requirements 

For Now, this program only runs on mac, Linux, and Windows systems that natively come built in with python. 
You need a card reader/writer that is able to read tracks 1, 2, and 3.  A good example of this would be the misiri MS705x.  Finally, solder the 3.5 mm audio cable (2 way connector) to the motherboard of the card reader.

<a href="https://www.amazon.com/Misiri-MSR705X-Magnetic-Reader-Encoder/dp/B06X91X37T">Card Reader</a>

<a href="https://www.amazon.com/AmazonBasics-3-5mm-Stereo-Audio-Cable/dp/B00NO73MUQ/ref=sr_1_5?ie=UTF8&qid=1503807307&sr=8-5&keywords=3.5mm+audio+cableT">3.5mm audio cable</a> 

Finally, make sure pyaudio is installed. 



### Reading a card

#### On Windows
Open up an explorer / cmd window, navigate to the script directory, and run Metrocard-reader.vbs

Card information will appear in the file cards.txt, and debug information about card reads will appear in rcd.log

![Alt Text](https://github.com/MyriaCore/MTA-metrocard-reader/raw/master/gifwin.gif)

#### On Mac / Linux
Open a terminal and go to the directory of metrocard-reader.sh

run "bash metrocard-reader.sh"

![Alt Text](https://github.com/MyriaCore/MTA-metrocard-reader/raw/master/gif.gif)

## Credits
- <a href="https://github.com/MantieReid">MantieReid</a>: <a href="https://github.com/MantieReid/MTA-metrocard-reader">Repository</a> maintainer.
- <a href="https://www.youtube.com/channel/UC22iZgwwgWQZfLMVFEDtMbw">Linxin Wu</a>: Original Author
