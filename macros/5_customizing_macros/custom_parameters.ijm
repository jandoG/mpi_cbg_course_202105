// blurs an image and finds maxima
// the user can specify the blurring strength and prominence of the maxima finder.

// specify custom parameters
sigma=2;
maximaProminence=10;

// run processing pipeline
run("Blobs (25K)");

run("Gaussian Blur...", "sigma="+sigma);

run("Find Maxima...", "prominence="+maximaProminence+" light output=[Point Selection]");

print("blur parameter: "+ sigma);
print("maxima prominence parameter: "+maximaProminence);
