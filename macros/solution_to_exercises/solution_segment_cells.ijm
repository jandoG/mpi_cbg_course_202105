// Segments cells in the current image, then analyzes particles. 
// This macro is very specific to the image name.
// solution to exercise.

// author: Noreen Walker , SCF-MPI-CBG, 2019-09

// usage: open cell1.tif and click on run

// duplicate so that we still keep the original for intensity measurements
run("Duplicate...", " ");

// segmentation
run("Gaussian Blur...", "sigma=1");
setAutoThreshold("Otsu dark");
run("Convert to Mask");
run("Watershed");

// set the measurements and analyse particles. 
run("Set Measurements...", "area mean redirect=cells1.tif decimal=3"); 
run("Analyze Particles...", "size=20-Infinity pixel show=[Count Masks] display exclude clear summarize");
