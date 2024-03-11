# !/bin/bash

##################################################################################################################
# Script Name: geocaching.sh
# Description: This script is a solution to online geochaching where you have to 
#               find the geochests in pages' html tags.
# Author:      Adam Szelestey
# Date:        March 11, 2024
# Version:     1.0
#
# Detailed description of the problem in hungarian
#
# Pár éve a vírushelyzetre való tekintettel a geocaching szerelmesei is otthoni keresték a geoládákat. Írjon
# egy scriptet, amely elindul egy megadott honlapról, ott megkeresi a geoládát, amelyet egy olyan <a> tag
# rejt, amelynek class attribútuma geocache. Az így megtalált tag href attribútuma rejti a következő ládát
# tartalmazó oldal url-jét, az data-treasure attribútuma pedig a ládában található kincset. A láda pozíciója a
# tag szövegében található (az x és y koordináta vesszővel elválasztva). Keresse meg az összes geoládát! A
# script álljon le, amikor egy oldalon nem talál geoládát, és írja ki az összes geoláda helyét és a bennük talált
# kincset.
#
#
# Dependencies: This script requires 'curl' for downloading content from URLs.
# Install 'curl' using package manager:
#   - For Debian/Ubuntu: sudo apt-get install curl
#   - For CentOS/RHEL: sudo yum install curl
#
#
# Usage: $ ./geocahchin.sh [options] [url]
# Options:
#   -h      Display this help message
#   -p      Provide the starting point of the geochache search
#
# Example:
#   ./geocahchin.sh -p www.first-page.com/geocaching.html
# 
##################################################################################################################

# Variables
page="https://www.geocaching.com/play"

# Function to print help message
Help()
{
   # Display Help
   echo "Usage: $ ./geocahchin.sh [options] [url]"
   echo "Options:"
   echo "  -h, --help  Display this help message"
   echo ""
   echo "Example:"
   echo "  ./geocahchin.sh -p https://www.first-page.com/geocaching.html"
   echo ""
}

############################################################
# Process the input options. Add options as needed.        #
############################################################
while getopts ":hp:" option; do
   case $option in
        h) # display Help
            Help
            exit;;
        p) # provide page URL
            page="$OPTARG"
            ;;
        \?) # Invalid option
            echo "Error: Invalid option"
            Help
            exit;;
   esac
done

echo "$page"