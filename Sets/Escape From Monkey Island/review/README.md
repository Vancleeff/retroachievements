# Achievement Set - Escape from Monkey Island - PS2 (2001)
## Game info
**Name :** Escape from Monkey Island\
**Platform :** PS2\
**Genre :** Adventure\
**Developer :** LucasArts\
**Publisher :** LucasArts\
**Release date :** 06-19-2001

## Terminology
Escape from Monkey Island has been developped on GrimE engine, the same engine used for Grim Fandango. It's mainly based on LUA.\
Here's some important word to understand :
- When we refer to a SET, it means a Room or a Map.
- When we refer to a SETUP, it means a camera angle inside a SET

## Logic
This document intends to help to explain the logic and choices made.

Every single achievement in this set have been split in two alt groups to support every version of the game.

The ALT 1 contains the US version logic : 
- SLUS-20181

The ALT 2 contains the other version logic :
- SLES-50225 : EU
- SLES-50226 : FR
- SLES-50227 : GER
- SLES-50229 : ES

I will only cover the ALT 1 in this document except if there's a difference between the two version, other than the offsets.\
The first condition on every ALT groups of this set is a check for the version :\
`0x00015210 == 0x53554c53` for US \
`0x00015210 != 0x53554c53` for others

The second condition on every ALT groups of this set is a check for demo mode :\
`0x00244820 == 0x0`

I will ignore these global conditions in this document to avoid redundancy.

### Yo Ho, Yo Ho! A Pirate's Life For Me
**Description :** Destroy the enemies' ship and complete the Prologue\
**Logic :**
- The prologue SET needs to be loaded (MELEE\wed.M4B)
- The first letter of the SET path need to be truncated (the engine acts like that during a Cut-scene or a CGI)
- The CGI of the prologue's end need to be played (intro_b)

The prior condition on the SET was made to have a better control of the trigger timing. 

### Hold My Grog !
**Description :** Beat Ignace Cheese during an Insult Wrestling\
**Logic :**
- The Scummbar SET needs to be loaded (MELEE\scu.M4B)
- The SETUP 0x03 need to be active (angle with Ignace Cheese)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
    - guyscu003
    - navscu052

### Insult Mastery
**Description :** Beat Ignace Cheese without making any mistake\
**Logic :**
- The Scummbar SET needs to be loaded (MELEE\scu.M4B)
- The SETUP 0x03 need to be active (angle with Ignace Cheese)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
    - guyscu003
    - navscu052
- The player needs to give only good answer to every insult to get the achievement, if one of the answer is not correct, the achievement is paused
- A reset is done if the dialog of the beginning of the fight is detected : 
    - guyscu008

#### INSULT MATRIX :
| Insult                                   | Answer                                   |
|------------------------------------------|------------------------------------------|
| navscu84 => 7376616e 38307563 00000034   | guyscu188 => 73797567 38317563 00000038  |
| navscu85 => 7376616e 38307563 00000035   | guyscu189 => 73797567 38317563 00000039  |
| navscu86 => 7376616e 38307563 00000036   | guyscu190 => 73797567 39317563 00000030  |
| navscu87 => 7376616e 38307563 00000037   | guyscu191 => 73797567 39317563 00000031  |
| navscu88 => 7376616e 38307563 00000038   | guyscu192 => 73797567 39317563 00000032  |
| navscu89 => 7376616e 38307563 00000039   | guyscu193 => 73797567 39317563 00000033  |
| navscu90 => 7376616e 39307563 00000030   | guyscu194 => 73797567 39317563 00000034  |
| navscu91 => 7376616e 39307563 00000031   | guyscu195 => 73797567 39317563 00000035  |
| navscu92 => 7376616e 39307563 00000032   | guyscu196 => 73797567 39317563 00000036  |
| navscu93 => 7376616e 39307563 00000033   | guyscu197 => 73797567 39317563 00000037  |
| navscu94 => 7376616e 39307563 00000034   | guyscu198 => 73797567 39317563 00000038  |
| navscu95 => 7376616e 39307563 00000035   | guyscu199 => 73797567 39317563 00000039  |
| navscu96 => 7376616e 39307563 00000036   | guyscu200 => 73797567 30327563 00000030  |
| navscu97 => 7376616e 39307563 00000037   | guyscu201 => 73797567 30327563 00000031  |
| navscu98 => 7376616e 39307563 00000038   | guyscu202 => 73797567 30327563 00000032  |

### Bad Manor
**Description :** Save the Governor Mansion from destruction\
**Logic :**
- The Governor Mansion Exterior SET needs to be loaded (MELEE\gme.M4B)
- The SETUP 0x02 need to be active (Zoom on catapult)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - googme010
  - googme041

### Werewolf
**Description :** Bark at the moon\
**Logic :**
- The Meathook Exterior SET needs to be loaded (MELEE\mhe.M4B)
- The SETUP 0x00 need to be active
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - guymhe004
  - guymhe005

### Lucre Island
**Description :** Sail to Lucre Island\
**Logic :**
- The Lucre Island Town SET needs to be loaded (LUCRE\luc.M4B)
- The Shipyard SET needs to be prior (MELEE\shi.M4B)

The prior condition on the SET was made to have a better control of the trigger timing. (the arrival on Lucre Island instead of randomly during the cutscenes)

### Cryptozoology
**Description :** Moo?! What kinda weird duck are you ?!\
**Logic :**
- The title screen SET **can't** be loaded (MELEE\cdt.M4B), meaning the player needs to be in-game. This check is usually implicit on other achievement in this game but as this one is not related to a specific location, the checks is made. 
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - ducall001
  - guyall125

### Bank Robbery
**Description :** Exit Lucre Island bank's vault\
**Logic :**
- The Bank SET needs to be loaded (MELEE\ban.M4B)
- The SETUP 0x02 need to be active (in front of vault's door)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - pegban001
  - guyvan001

### File-O-Matic
**Description :** Get information about Pegnose Pete's location\
**Logic :**
- The Palace of Protheses SET needs to be loaded (MELEE\pop.M4B)
- The SETUP 0x01 need to be active (in front of the counter)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - guyall078
  - guyall079

### Dr Emmett Brown
**Description :** Kill futur's Guybrush\
**Logic :**
- The Mystes O' Tymes SET needs to be loaded (MELEE\mot.M4B)
- The SETUP 0x08 need to be active (in front of the grid)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - guymot033
  - guymot034

### Mystes O' Tyme
**Description :** Made your way to Pegnose Pete's Cabin\
**Logic :**
- The Pegnose Pete Cabin SET needs to be loaded (MELEE\pph.M4B)
- The Mystes O' Tymes SET needs to be the delta (MELEE\mot.M4B)

### Law and Order
**Description :** Catch Pegnose Pete and hand him over to the Inspector Canard\
**Logic :**
- The Hall of Justice SET needs to be loaded (MELEE\hoj.M4B)
- The SETUP 0x00 need to be active (Main room)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - canhoj02
  - guyhoj01

### Dr Frankenstein
**Description :** Create and use an abomination\
**Logic :**
- The title screen SET **can't** be loaded (MELEE\cdt.M4B), meaning the player needs to be in-game. This check is usually implicit on other achievement in this game but as this one is not related to a specific location, the checks is made.
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - guyall077
  - guymot075

### Scuba Diver
**Description :** Hold your breath underwater as long as possible\
**Logic :**
- The Underwater SET needs to be loaded (MELEE\ulg.M4B)
- The SETUP 0x00 need to be active (in deep water)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - guyulg001
  - guyulg002

### Murray Ball
**Description :** Unlock and play a game of Murray Ball\
**Logic :**
- The title screen SET **can't** be loaded (MELEE\cdt.M4B), meaning the player needs to be in-game. This check is usually implicit on other achievement in this game but as this one is not related to a specific location, the checks is made.
- Check the logic of unlocked bonus with AddAddress +0x18 and check for the correct script id : `mball`

### Act II
**Description :** Prove your innocence and come back to Melee Island\
**Logic :**
- The Governor Mansion Inside SET needs to be loaded (LUCRE\gmi.M4B)
- The Act II screen SET needs to be prior (MELEE\act.M4B)
- The SETUP 0x03 need to be active (in front of Elaine)
- The last CGI played should be `home1` (LeChuck appearance)
- The prior Last CGI played should be `nose` (Pegnose Pete confrontation)

The prior conditions on the SET and CGI was made to have a better control of the trigger timing. (The end of every cutscene)
These CGI and cutscene can't be played on separated session as they are successive so no risk to break something by save/load a game.

### Talktoo
**Description :** Convince Meathook to do that funny thing\
**Logic :**
- The Meathook's House Inside SET needs to be loaded (MELEE\mhi.M4B)
- The SETUP 0x01 need to be active (in front of Meathook)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - meamhi050
  - meamhig051
  
### Melting Art
**Description :** Burn down the painting at LUA Bar\
**Logic :**
- The LUA Bar SET needs to be loaded (MELEE\lua.M4B)
- The SETUP 0x03 need to be active (in front of sushi-ships)
- The last CGI played should be `melt` (Painting melting)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - chelua014
  - chelua015  
  
### Jambalya Island
**Description :** Sail to Jambalya Island\
**Logic :**
- The Jambalya Town SET needs to be loaded (JAMBALAY\gpt.M4B)
- The Melee Shipyard SET needs to be the prior (MELEE\shi.M4B)

The prior conditions on the SET and CGI was made to have a better control of the trigger timing. (the arrival on Jambalya Island instead of randomly during the cutscenes)

### Silver Monkey Head
**Description :** Get the first part of the Ultimate Insult\
**Logic :**
- The Planet Threepwood SET needs to be loaded (JAMBALAY\plt.M4B)
- The SETUP 0x03 need to be active (at table)
- A delta/mem check is done on the function : `use_fake_Monkey_Mug` which is called when Guybrush exchange the fake monkey mug with the real one.

### Certificate of Transmogrification
**Description :** Be graduated from Ozzie Mandrill's Pirate Transmogrification Academy\
**Logic :**
- The School SET needs to be loaded (JAMBALAY\cpt.M4B)
- The SETUP 0x01 need to be active (Behind Mrs Rivers)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - rivpta043
  - guypta006  
  
### Bronze Hat
**Description :** Get the second part of the Ultimate Insult\
**Logic :**
- The Knottin Attol Beach SET needs to be loaded (JAMBALAY\kab.M4B)
- The value on 0x00242974 which contains the pointer to SETUP need to be 0x0 then not (prior/mem). It is to trigger the achievement after the cutscene for better immersion.
- The SETUP 0x07 need to be active (Behind big Rock)
- The last dialog ID played should be :
  - guykab057

### How About Another Joke, Murray?!
**Description :** Getting bitten by Murray while changing clothes\
**Logic :**
- The Plank Tournament SET needs to be loaded (JAMBALAY\pla.M4B)
- The SETUP 0x01 need to be active (in front of Marco de Pollo)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - guymot033
  - murgpt043  
  
### MARCO ! POLO !
**Description :** Beat Marco de Pollo and get the last part of the Ultimate Insult\
**Logic :**
- The Plank Tournament SET needs to be loaded (JAMBALAY\pla.M4B)
- The SETUP 0x02 need to be active (in front of jury)
- Two specific dialogs IDs need to be detected in a row (delta/mem) :
  - trppla005
  - eddpla005  

### Act III
**Description :** Be banished to Monkey Island\
**Logic :**
- The Monkey Island Beach SET needs to be loaded (MONKEY\mib.M4B)
- The Act III screen SET needs to be the prior (MONKEY\act.M4B)
- The SETUP 0x00 need to be active (Start point)
- The prior last CGI played should be `ela3` (Elaine at Melee Island)
- The last CGI played should be `home2` (Guybrush comes back to Melee Island)

The prior conditions on the SET and CGI was made to have a better control of the trigger timing. (the arrival on Monkey Island instead of randomly during the cutscenes)

### Boulder Dash
**Description :** Throw a boulder to the Volcano\
**Logic :**
- The Boulder Riddle SET needs to be loaded (MONKEY\pac.M4B)
- A delta/mem check is done on the function : `rock_cs rock c` which is called when Guybrush successfully launch a rock towards the volcano.

### Murray Invaders
**Description :** Unlock and play a game of Murray Invaders\
**Logic :**
- The title screen SET **can't** be loaded (MELEE\cdt.M4B), meaning the player needs to be in-game. This check is usually implicit on other achievement in this game but as this one is not related to a specific location, the checks is made.
- Check the logic of unlocked bonus with AddAddress +0x18 and check for the correct script id : `minvaders`

### Animality
**Description :** Become the true champion of Monkey Kombat by beating Jojo Jr\
**Logic :**
- The Monkey Town SET needs to be loaded (MONKEY\mon.M4B)
- The SETUP 0x03 need to be active (in front of Jojo Jr)
- A check is made with delta/mem on a specific dialog :
  - jojmon017

This check is on one dialog instead of two because this scene can be skipped by the player, so it's impossible to know which dialog will be the previous one.
  
### Act III+
**Description :** Escape Monkey Island\
**Logic :**
- The Act III+ screen SET needs to be loaded (MONKEY\act.M4B)
- The prior last CGI played should be `espy` (Rebellion on Melee Island)
- The last CGI played should be `gmrr` (End of Act III)
- A check is made with delta/mem on a specific dialog :
  - guyhei030

This check is on one dialog instead of two because this scene can be skipped by the player, so it's impossible to know which dialog will be the previous one.

### A Pirate I Was Meant To Be
**Description :** Complete Escape from Monkey Island. Now, trim the sails and roam the sea !\
**Logic :**
- The Final SET needs to be loaded (MONKEY\fin.M4B)
- The SETUP 0x05 need to be active (in front of the Ravine)
- The last CGI played should be `fini` (Last CGI)
- A check is made with delta/mem on a specific dialog :
  -  k1mon006 (which is truncated when the generic starts)

### Coward
**Description :** Try to escape the final fight\
**Logic :**
- The Final Fight SET needs to be loaded (MONKEY\fin.M4B)
- The SETUP 0x00 need to be active (During the fight)
- A check is made with delta/mem on a specific dialog :
  - guymon092
