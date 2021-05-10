// get current image title
imageName = getTitle();

// read image properties
width = getWidth();
height = getHeight();
getPixelSize(unit, pixelWidth, pixelHeight);

// show results
print("Image name is " + imageName);
print("The image is " + width + " times " + height + " pixels wide");
print("Each pixels has a size of " + pixelWidth + 
      " times " + pixelHeight + " " + unit + "^2");

close();
