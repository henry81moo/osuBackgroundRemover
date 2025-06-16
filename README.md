# osuBackgroundRemover
## removes osu backgrounds for those who don't wanna stare at anime waifus while they play

### step 1
first i made a bat script that deletes all image files inside all the beatmaps

### step 2
then i made a bat script that puts a blankbg.jpg inside all the beatmaps' folders

### step 3
then i made a ps1 script that edits all the .osu files inside of each beatmaps (where the data for the beatmap itself is, including where the pointer for the image is. there is no standardised name for an image file, so for example one beatmap could have bg.jpg while another beatmap has beatmap_background.jpg) and points the game to the new blankbg.jpg. this is to avoid the annoying " some files are missing etc etc " at the start of every beatmap if u do not do this

### step 4
then i converted all 3 scripts to base64

### step 5
then i made a consolidated ps1 file that combines all three of these scripts using the new base64 translation

## step 6
finally i used ps2exe to make that last ps1 into an exe so u don't have to cd your songs folder everytime u wanna use it

will not work if the beatmap you downloaded for some reason has their image filename as blankbg.jpg, though this is extremely unlikely

should still work if the beatmap uses a video instead of an image i think, just disable background video in detail settings, that'll force it to use the image

the bat files and ps1 files are here for reference

idk if this already exists the one i found is 10 years old 
