#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
USER="sukriti"
hostname=$(hostname)
TODAY=$(date +"%c")
day=$(date +"%A")
Weekday=$(date +%u)

###############
# Main        #
###############

if ["$day" = "Monday"]
then
  title="MOtivational"
else
if ["$day" = "Tuesday"]
then
  title="Terrific"
else
if ["$day" = "Wednesday"]
then
  title="Warmy"
else
if ["$day" = "Thursday"]
then
  title="Thoughful"
else
if ["$day" = "Friday"]
then
  title="Funny"
else
if ["$day" = "Saturday"]
then
  title="Beautiful"
else
if ["$day" = "Sunday"]
then
  title="Sunny"
fi
fi
fi
fi
fi
fi
fi

cat <<EOF

Welcome to planet $hostname, "$title $USER!"
EOF

if [ "$Weekday" = "6" ] || [ "$Weekday" = "7" ]
then
  echo "It is $TODAY on Weekend."
else
  echo "It is $day on Weekday."
fi
