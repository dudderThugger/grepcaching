# Geocaching in html pages (Grepcaching :D)

This repository contains a bash based solution for Linux/Unix systems to a school project at the Budapest University of Technology and Economycs. The problem is described below.

## Problem

Given the recent viral situation, geocaching enthusiasts have also resorted to seeking geocaches from the comfort of their homes. Write a script that starts from a specified webpage, finds the geocache hidden within an \<a\> tag with a class attribute of 'geocache'. The href attribute of the found tag contains the URL of the next page containing the cache, while the data-treasure attribute contains the treasure found in the cache. The cache's position is found within the text of the tag (separated by commas for x and y coordinates). Find all the geocaches! The script should stop when no geocache is found on a page, and it should print out the locations of all the geocaches and the treasures found in them.

## Usage

Usage: 
```bash
./geocaching.sh [options] [url]
```

Options:
 -  `h`:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Display help message
 -  `p PAGE`:&nbsp;&nbsp;&nbsp; Provide the starting point of the geochache search

Example:
```bash
  ./geocahchin.sh -p http://127.0.0.1:5000/geocaching.html
```

## Installation

 1. Clone repository :    
 ```
 git clone https://github.com/DudderThugger/grepcaching.git
 ```

 2. Navigate into the directory:
 ```
 cd grepcaching
 ```

 3. Make the script executable:
 ```
 chmod +x ./grepcaching.sh
 ```

 4. Run the script:
 ```
 ./geocahchin.sh -p http://127.0.0.1:5000/geocaching.html
 ```

 ## Testing
The repository also contains a very lightbase testing API application which can serve your geocache HTTP calls. To start the API python must be present on your environment with the Flash package installed. You can install the Flask package with the execution of the following command:
```
pip install flask
```
Then you can start the API server if you execute the following command from the geogrep directory:
```
python ./test/test_apy.py
```
While running this application serves every HTTP GET command to the http://127.0.0.0.1:5000/file-name.html URL and returns the file referenced in the URL if present. To extend the "geocache" tree you can add new or modify the existing html files in the repository.

## Dependencies
To use the script you only need bash and curl command installed. For the test API server python2's or python3's any version with the Flask module must be present. You can install dependecies on Linux (Ubuntu/Debian):
 - python3:
 ```
 sudo apt update
sudo apt install python3
```
 - curl:
```
sudo apt install curl
```
These packages are both very stabile, well documented and up-to-date.