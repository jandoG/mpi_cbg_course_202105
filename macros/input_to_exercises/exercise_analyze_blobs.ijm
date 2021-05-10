// This macro segments and analyzes the particles of the Blobs image.
//
// author: Noreen Walker, MPI-CBG, walker@mpi-cbg.de
// September 2019


// download from the web
run("Blobs (25K)");

// segment the image
setAutoThreshold("Default");
run("Convert to Mask");

// get size statistics
run("Set Measurements...", "area redirect=None decimal=3");
run("Analyze Particles...", "size=20-Infinity display exclude clear");