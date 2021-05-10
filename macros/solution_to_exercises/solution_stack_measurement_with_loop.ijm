// This macro will measure mean intensity of each slice in an open image.

// Author: Gayathri Nadar
// Date: 19-11-2020 

// Usage: Open an image with slices (z-stack) and click run on this macro.


// initialize the program

// enter the built-in command for Stacks to get no of slices
Stack.getDimensions(width, height, channels, slices, frames);

// start loop
for (i = 1; i <= slices; i++) {

	// set to slice number i on the image 
    Stack.setSlice(i);
	
    // measure statistics at ith slice
    getStatistics(area, mean, min, max, std, histogram);
    
    // print mean
    print("Mean at slice no " + i + " = " + mean);
}

print("Done!")
