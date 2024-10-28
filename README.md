# Fiji-ORO-macro
Custom macro script for ImageJ/Fiji for automated analysis of oil Red O staining modified from the following published reference: 

Nishad A, Naseem A, Rani S, Malik S. Automated qualitative batch measurement of lipid droplets in the liver of bird using ImageJ. STAR Protoc. 2023 Sep 15;4(3):102466. doi: 10.1016/j.xpro.2023.102466. Epub 2023 Jul 24. PMID: 37490388; PMCID: PMC10382670.

This script was written in Fiji/ImageJ2 version 2.14.0 for Mac OS 14.6.1. It has not been tested on other ImageJ/Fiji versions or on other operating systems, and it is therefore recommended that it be run on the latest version of Fiji. However this macro should work correctly with other software versions and other operating systems that are compatible with Fiji/ImageJ2 listed at https://imagej.net/software/fiji/downloads. There is no required non-standard software.  

To use this macro you must have the Fiji or ImageJ basic software package installed on your computer. Both are freely available at https://imagej.net/ij/download.html or https://fiji.sc/. Follow the installation instructions provided with the downloads. Normal installation time expected on an average desktop computer for either of these is < 10 minutes and there is no additional time required for installation of the macro itself.  

As an example of how to use this macro please follow the following example workflow with the provided example data: 

1. Download and install Fiji as above
2. Download 1) the macro (Fiji ORO.ijm) and 2) the "Fiji ORO example input dataset" folder
3. Start Fiji
4. Open the example image "ORO high.tif" within the "Fiji ORO example input dataset" folder in Fiji
5. Go to image -> type -> 8-bit
6. Go to image -> adjust -> threshold
7. Make sure the thresholding algorithm is set to "default" and the display to "B&W"
8. Check the following boxes: dark background, don't reset range, and raw values
9. Move the sliders for the upper and lower limits to the desired setpoints. The general concept is to capture as much of the actual oil red oil signal as possible while minimizing the background. This must be done empirically for every data set and is a user-defined variable that will affect all downstream results. Once done click the apply button. 
10. Repeat steps 4 - 9 for the "ORO low.tif" file to double check that the selected threshold values are also appropriate for conditions with lower oil red O staining.
11. Record the selected values. Open the macro in a text editing program and replace the default values of 0 and 125 in the macro line setThreshold(0, 125, "raw"). Save the file.
12. Close all open image windows.
13. Go to analyze -> set measurements. Make sure that the "area" and "limit to threshold" boxes are checked.
14. Go to plugins -> macros -> run. Selected the Fiji ORO.ijm macro file that you just edited in step 11.
15. In the first popup, choose the folder of the image files to be analyzed. In the example data provided this is the Fiji ORO example dataset file.
16. In the second popup, choose a location for the results to be saved. This is easiest if a new folder is created for the ouput files.
17. The script will run and the output .csv files will be placed in the selected output folder.
18. Open the last .csv file in the output folder - this contains the analyzed area for each file present in the input folder. All other .csv files in the output can be deleted as they are successive iterations of the script. The input files are analyzed and reported in the .csv file in whatever order they are present in input folder so sequential naming of files starting with numbers that place them in the desired order (01_xxx_.tif, 02_xxx.tif, etc.) is recommended.

Examples of both thresholded images and output from this macro are included in the folder "Fiji ORO example output". 
![image](https://github.com/user-attachments/assets/34dcec8e-f754-4705-9f82-456ef79d52b2)
