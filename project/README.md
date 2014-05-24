In this project, you'll find:
 * An R script for processing the input data set and producing a tidy summary, run_analysis.R
 * A code book for the output file produced when you run this script, ./CodeBook.md
 * A copy of the output from running this script (instructions below), ./data/summary.txt
 * A copy of the input data, from the UCI (Human Activity Recognition) project, fetched 20 May 2014
 * This file, ./README.md

Instructions:
 * Install matching or compatible versions of the Software described in Test Conditions (note plyr)
 * Create a destination directory for these files and clone the contents of this repository into it
  * For instructions on cloning a repository, see https://help.github.com/articles/fetching-a-remote
 * Set the working directory to the directory where these files reside (parent of subdirectory, data)
 * Run the script, run_analysis.R, using your preferred technique (via R Studio, R CMD, etc.)

Optional Steps
 * If you wish to re-fetch the source data:
  * Delete the contents of the 'data' directory
  * Download and uncompress the .zip file below into the 'data' subdirectory (see Data, under References)
 * If you wish to delete and re-create the output:
  * Delete the file, ./data/summary.txt
  * Else, the file will simply be overwritten each run

References:
 * Project: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 * Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Test Conditions/Software:
 * R version 3.1.0 (2014-04-10) -- "Spring Dance", Platform: x86_64-apple-darwin13.1.0 (64-bit)
 * Package 'plyr', version 1.8.1
 * (optional) R Studio. Tested with Version 0.98.501 on Mac OSX 10.9.3
