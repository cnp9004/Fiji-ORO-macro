dir1 = getDirectory("Choose Source Directory ");
dir2 = getDirectory("Choose Destination Directory ");
list = getFileList(dir1);
setBatchMode(true);
for (i=0; i<list.length; i++)
{
	filename = dir1 + list[i];
	if (endsWith(filename, "tif"))
	{
		open(filename);
		selectImage(list[i]);run("Bandpass Filter...", "filter_large=200 filter_small=100 suppress=None tolerance=5 autoscale saturate");
run("8-bit");
setAutoThreshold("Default");
//run("Threshold...");
setThreshold(0, 125, "raw");
run("Measure");
selectWindow("Results");
		saveAs("Results", dir2+File.nameWithoutExtension+".csv");
	}
}
run("Close");