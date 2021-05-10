// get current image title
imageName = getTitle();

// get image statistics 
getStatistics(area, mean, min, max, std);

// show results
print("Image name is " + imageName);
print("The grey value ranges from " + min + " to " + max + ". ");
print("It has an average of " + mean + " +- " + std + ". ");

close();

