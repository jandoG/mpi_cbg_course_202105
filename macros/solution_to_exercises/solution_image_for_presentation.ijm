// this macro will create a PNG file of m51 galazy with Fire LUT and calibration bar

// Author: Gayathri Nadar 
// Date: 19-11-2020

// Usage: open m51.tif and click on run.


// apply fire LUT
run("Fire");

// apply calibration bar
run("Calibration Bar...", "location=[Upper Right] fill=White label=Black number=8 decimal=0 font=10 zoom=1 overlay");

// convert to RGB
run("RGB Color");

// rename file 
rename("m51_for_presentation");

// save to your desktop
saveAs("png", "/Users/nadar/Desktop/m51_for_presentation.png");
