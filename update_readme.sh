#!/bin/bash
# ++++++++++++++++++++++++++++++++++
#  README.md by ngzhekai
#  Imported from Green-Commit-Quotes
# ++++++++++++++++++++++++++++++++++ 

source=$(curl https://zenquotes.io/api/random)

# Get the Quote and Author
quote=$(echo $source | jq -r .[].q)
author=$(echo $source | jq -r .[].a)

# Get the Date and Time
dates="$(date +'%d/%m/%Y')"
time="$(date +'%T')"

# Concatenate the string
title="## About Me"
output="Howdy! 👋 I am *Gilbert Ng*（JP: ぎるばって呼んでいいよ ✌️）"
blank_space=""
quote="### **<q>${quote}</q>** -<em>${author}</em>"
note="> Updated on $dates - (UTC) $time"
status="### Status [自分の情報]✅"
status_1="- 🙍‍♂️ Data Communication & Networking Student (Multimedia University Melaka)"
status_2="- 🌱 I’m currently learning **about life**"
# status_3="- 📫 How to reach me <a href="mailto:ngzhekai@pm.me">**ngzhekai@pm.me**</a>"
status_4="- ⚡ Fun fact :arrow_right:  **Nothing in here, yet.**"
# url="Implemented from this [Repo](https://github.com/ngzhekai/Green-Commit-Quotes)"
stats="<div><img align=\"left\" src=\"https://github-readme-stats.vercel.app/api/top-langs/?username=ngzhekai&layout=compact&theme=material-palenight&hide_border=true\" /><img align=\"center\" src=\"https://github-readme-stats.vercel.app/api?username=ngzhekai&show_icons=true&theme=material-palenight&hide_border=true\" /></div>"
stats_1="![](https://www.codewars.com/users/Giruba/badges/large)"
stats_2="![](https://www.gif-vif.com/media/Hackerman.gif)"

echo $quote > README.md
echo $note >> README.md
echo $blank_space >> README.md
# echo $url >> README.md
echo $blank_space >> README.md
echo $title >> README.md
echo $blank_space >> README.md
echo $output >> README.md
echo $blank_space >> README.md
echo $status >> README.md
echo $blank_space >> README.md
echo $status_1 >> README.md
echo $status_2 >> README.md
echo $status_3 >> README.md
echo $blank_space >> README.md
echo $stats >> README.md
echo $blank_space >> README.md
echo $stats_1 >> README.md
echo $blank_space >> README.md
echo $stats_2 >> README.md
echo $blank_space >> README.md
