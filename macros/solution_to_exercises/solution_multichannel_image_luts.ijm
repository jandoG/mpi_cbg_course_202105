// Changes the LUT of a 3-channel image and creates a RGB image of the channel 1 and 3.
// author: Noreen Walker , SCF-MPI-CBG, 2019-09

// Usage:
// open an image and click on run


// get image name
imageName=getTitle();

run("Split Channels");

// process channel 1
selectWindow("C1-"+imageName);
run("Magenta");
run("Enhance Contrast", "saturated=0.35");

//process channel 3
selectWindow("C3-"+imageName);
run("Cyan");
run("Enhance Contrast", "saturated=0.35");

// merge 
run("Merge Channels...", "c1=C1-"+imageName+" c3=C3-"+imageName+" create");
run("RGB Color");

// give a name to the new image 
newName = "RGB_" + imageName; 
rename(newName);