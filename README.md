<img style="display:inline-block;" src="LOGO.png" alt="KBPulse" width="100" height="100">

# KBPulse
Pulse the backlight on your Mac keyboard

<a href="https://www.youtube.com/watch?v=0plJtiXuT0U">Demo</a>

## Configuration
Configuration files (.json) are stored in `~/Documents/KBPulse`. (This location will likely change in the future.) Yawn.json is the default theme. Copy it to make your own.
The array of animations is not limited to two animations. You can add as many as you want!

### Yawn.json
```json
{
  "Author" : "EthanRDoesMC",
  "Version" : "1.0.0",
  "Homepage" : "https:\/\/ethanrdoesmc.com\/",
  "Preview Image URL" : " ",
  "Animations" : [
    {
      "Description" : "Fades the keyboard to full brightness",
      "Name" : "Fade In",
      "Fade Duration" : 2500,
      "Brightness" : 1,
      "Delay" : 0
    },
    {
      "Description" : "Fades the keyboard to off",
      "Name" : "Fade Out",
      "Fade Duration" : 2500,
      "Brightness" : 0,
      "Delay" : 0
    }
  ],
  "Name" : "Yawn (default)",
  "Description" : "A calm, breath-like animation that somewhat resembles the sleep indicator on older MacBooks."
}
```
