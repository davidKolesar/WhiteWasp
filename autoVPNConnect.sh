#!/bin/bash

# List of NordVPN locations
declare -a locations=("Albania" "Greece" "Poland" "Argentina" "Hong_Kong" "Portugal" "Australia" "Hungary" "Romania" "Austria" "Iceland" "Serbia" "Belgium" "India" "Singapore" "Bosnia_And_Herzegovina" "Indonesia" "Slovakia" "Brazil" "Ireland" "Slovenia" "Bulgaria" "Israel" "South_Africa" "Canada" "Italy" "South_Korea" "Chile" "Japan" "Spain" "Costa_Rica" "Latvia" "Sweden" "Croatia" "Lithuania" "Switzerland" "Cyprus" "Luxembourg" "Taiwan" "Czech_Republic" "Malaysia" "Thailand" "Denmark" "Mexico" "Turkey" "Estonia" "Moldova" "Ukraine" "Finland" "Netherlands" "United_Kingdom" "France" "New_Zealand" "United_States" "Georgia" "North_Macedonia" "Vietnam" "Germany" "Norway")


#Seeding random generator
RANDOM=$$$(date +%s)

selectedLocation=${locations[$(($RANDOM % ${#locations[@]} + 1 ))]} 
	
nordvpn connect $selectedLocation
exit 0