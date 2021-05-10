// This macro downloads and opens Blobs image from the internet, blurs it using gaussian blur and detects the maxima in it
// This is a customized macro that allows user to set sigma values in a variable. 

// author: Gayathri Nadar, MPI-CBG, nadar@mpi-cbg.de
// April 2021


// open blobs image 
run("Blobs (25K)");

// define a variable for holding blurring strength
sigma = 5;

// gaussian blur - modified to hold the variable 
run("Gaussian Blur...", "sigma=" + sigma);

// detect maxima 
run("Find Maxima...", "prominence=30 light output=[Point Selection]");
