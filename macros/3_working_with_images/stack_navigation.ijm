//open an image from the web
run("Fluorescent Cells (400K)");

// get all dimensions
Stack.getDimensions(width, height, channels, slices, frames);
print("channels: " + channels + ", slices: " + slices + ", frames: " + frames );

// set the channel
Stack.setChannel(2);
// alternative:
Stack.setPosition(2,1,1);
