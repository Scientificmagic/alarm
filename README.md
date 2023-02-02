# Alarm
A simple alarm that plays media at a set time. Perfect if you have speakers attached to your computer.
Just queue media for your alarm and run the script.

## Usage
**This script triggers Windows play/pause media key. Whatever plays when you hit the play/pause key will be your alarm**

You should physically play/pause the media once for it to be focused. Do not play other sources once you have the desired media in focus.

If you're simply running the script without command-line arguments, you'll need to modify the first line of the script to the desired time.

### File explorer
Right-click and "run with powershell."

### Terminal
```
powershell ./alarm.ps1 [HH [mm]]
    HH - 24-Hour format
```
Example:
`powershell ./alarm.ps1 10 30`


## Troubleshooting
If you cannot run due to execution policies on your machine, you will have to set a less restrictive policy. Refer to the error message and follow the link.