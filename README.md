# Convert AT&T Surface Duo into the global variant

## Prerequisites

- Your AT&T Surface Duo recovery image.
- A global Surface Duo recovery image (https://www.reddit.com/r/surfaceduo/comments/sc0k2g/comment/hu47nva/?utm_source=share&utm_medium=web2x&context=3).
- [Root](https://forum.xda-developers.com/t/root-guide-updated.4266095/).
- Unlocked bootloader (including critical).
- USB Debugging turned on.

## WARNINGS

While this has been tested on my personal device I cannot confirm that'll it work for yours. sim card support might be broken (though it worked on my Swedish network). **I am not responsible for any damage that might occur to your device.**.
Bank and similar (SafetyNet) apps should still work but might require you to re-lock the bootloader afterwards. Since we'll just be running stock firmware.

## Steps

1. Extract payload.bin from the global Surface Duo recovery image.
2. Use payload_dumper from the rooting guide to extract the partition images.
3. Copy all the partition images `/sdcard/duo` on the target Surface Duo.
4. Copy download [globalify.sh](globalify.sh) and save it as `globalify.sh` on the root of the target Surface Duo.
5. Open a terminal with adb and run the following
   1. `adb shell`
   2. `su`
   3. `cd /sdcard/ && chmod +x globalify.sh && ./globalify.sh`
6. Exit adb shell and run `adb reboot recovery`. You might have to press Volume Up + Power to get past the "No Command" screen.
7. Pick the sideload through adb option.
8. `adb sideload name_of_duo_global_ota.zip`, This might fail at 98%; but should still work. If not just boot into recovery and retry from step 6.
9. Reboot.
10. Profit!!!
11. Support me on [GitHub Sponsors](https://github.com/sponsors/filiphsandstrom) if you'd like to say thanks :D
