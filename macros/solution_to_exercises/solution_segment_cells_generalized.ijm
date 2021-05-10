// Segments cells in the current image, then analyzes particles. 
// This macro is can run on an image with arbitrary name

// author: Noreen Walker , SCF-MPI-CBG, 2019-09

// get image name
imageName=getTitle();

// duplicate so that we still keep the original for intensity measurements
run("Duplicate...", " ");

// segmentation
run("Gaussian Blur...", "sigma=1");
setAutoThreshold("Otsu dark");
run("Convert to Mask");
run("Watershed");

// set the measurements and analyse particles. 
run("Set Measurements...", "area mean redirect=" + imageName + " decimal=3"); 
run("Analyze Particles...", "size=20 pixel  display exclude clear");
