// This macro downloads and opens Blobs image from the internet, blurs it using gaussian blur and detects the maxima in it
//
// author: Gayathri Nadar, MPI-CBG, nadar@mpi-cbg.de
// April 2021


// open blobs image 
run("Blobs (25K)");

// gaussian blur
run("Gaussian Blur...", "sigma=2");

// detect maxima 
run("Find Maxima...", "prominence=30 light output=[Point Selection]");
