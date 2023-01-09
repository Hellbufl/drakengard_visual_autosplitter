# drakengard_visual_autosplitter
A visual autosplitter profile for Drakengard

\
If you have any questions, feel free to DM me on Discord: Hellbufl#9940 \
or come to the Drakengard 1 section of the DrakeNieR speedrun Discord server: \
https://www.sponsoredbydrakengard.com

\
Requirements:
- Livesplit component: https://github.com/ROMaster2/LiveSplit.VideoAutoSplit
- OBS: https://obsproject.com
- not too much sanity left

\
Installing:
- extract the VideoAutoSplit files into Livesplits *"Components"* folder
- add the component to your livesplit layout through the big *"+"* -> *"Control"* -> *"Video Auto Splitter"*
- set up OBS virtual cam to output only the game feed (no black border or anything else)
  > - you can set the virtual cam to output a single scene
  > - if the game does not fill the frame in that scene, stretch it to fill the entire frame
  - **This is very important because how you frame the game feed will determine how good the feature detection works**

\
In the component settings:
- set the .vas file as *"Game Profile"*
- set OBS virtual cam as *"Capture Device"*

\
It's working if you see the game feed in the *"Scan Region"* tab and some funny numbers in the *"Features"* tab.\
\
If not:
- restart livesplit (save layout)
- refresh the capture device a few times by switching to another and back
  > (Yes this is jank as shit, don't worry about it)
