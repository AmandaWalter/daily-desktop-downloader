# daily-desktop-downloader
A ruby script to download an image from the internet and save as a new desktop. I did this to learn a bit about shell scripting, and things like wget & curl.

To get it to work on your own machine, you will need to change filepaths as indicated by comments in the ruby (.rb) script. You should not need to make any changes to the shell(.sh) script. This is a script for mac os x, I do not know if it will work any where else!

##To run from the command line:
`ruby get-and-set-img.rb`

##To make a cronjob that will update the background for you at a specific time every day:
- Your computer has to be on for the job to run.
- `env EDITOR=nano crontab -e`
- (You can use vim too, omit the 'env EDITOR=nano' bit. `crontab -e`)
- In nano, write out the chronjob. To run the program at 10am everyday use this code `* 10 * * * ruby <path to get-and-set-img.rb>
- Systems are set up different, so it may take some fiddling with the path to get it to work. Stackoverflow gave me many different options to try :)
- For the cronjob, the * is a wildcard, it means every instance possible. The columns are in this order: minute(0-59 or *) hour(0-23 or *) day of the month(1-31 or *) month(1-12 or *) day of week( 0-6, Sunday is 0, or *)

