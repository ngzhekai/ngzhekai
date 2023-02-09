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
status="### My Status [自分の情報]✅"
# status_1="- 🙍‍♂️ Data Communication & Networking Student (Multimedia University Melaka)"
# status_2="- 🌱 I’m currently learning **about life**"
stats_2="![](https://www.codewars.com/users/Giruba/badges/large)"
stats_3="![](https://www.gif-vif.com/media/Hackerman.gif)"
spotify="<a href=\"https://open.spotify.com/user/flxv095c8u53mlz4cjvagkgzl\" target=\"_blank\" rel=\"noopener noreferrer\"><picture><source media=\"(prefers-color-scheme: dark)\" srcset=\"https://spotify-readme-ofldzkxst-ngzhekai.vercel.app/api?rainbow=true\"><source media=\"(prefers-color-scheme: light)\" srcset=\"https://spotify-readme-ofldzkxst-ngzhekai.vercel.app/api?rainbow=true&theme=dark\"><img alt=\"Shows an real-time spotify now-playing widget white-theme in light mode and dark-theme in dark mode.\" src=\"https://spotify-readme-ofldzkxst-ngzhekai.vercel.app/api?rainbow=true\"></picture></a>"
github_stats="<table><tr><td><picture><source media=\"(prefers-color-scheme: dark)\" srcset=\"https://github-readme-stats-eniocvy92-ngzhekai.vercel.app/api/top-langs/?username=ngzhekai&layout=compact&theme=material-palenight&bg_color=00000000&hide_border=true&custom_title=Most+Used+Programming+Languages\"><source media=\"(prefers-color-scheme: light)\" srcset=\"https://github-readme-stats-eniocvy92-ngzhekai.vercel.app/api/top-langs/?username=ngzhekai&layout=compact&theme=buefy&hide_border=true&custom_title=Most+Used+Programming+Languages\"><img alt=\"GitHub Top Language stats\" src=\"https://github-readme-stats-eniocvy92-ngzhekai.vercel.app/api/top-langs/?username=ngzhekai&layout=compact&theme=material-palenight&bg_color=00000000&hide_border=true&custom_title=Most+Used+Programming+Languages\"></picture></td><td><picture><source media=\"(prefers-color-scheme: dark)\" srcset=\"https://github-readme-stats-eniocvy92-ngzhekai.vercel.app/api?username=ngzhekai&show_icons=true&count_private=true&theme=material-palenight&bg_color=00000000&hide_border=true&line_height=33&custom_title=Zhe+Kai's+GitHub+Statistics\"><source media=\"(prefers-color-scheme: light)\" srcset=\"https://github-readme-stats-eniocvy92-ngzhekai.vercel.app/api?username=ngzhekai&show_icons=true&count_private=true&theme=buefy&hide_border=true&line_height=33&custom_title=Zhe+Kai's+GitHub+Statistics\"><img alt=\"GitHub Stats\" src=\"https://github-readme-stats-eniocvy92-ngzhekai.vercel.app/api?username=ngzhekai&show_icons=true&count_private=true&theme=material-palenight&bg_color=00000000&hide_border=true&line_height=33&custom_title=Zhe+Kai's+GitHub+Statistics\"></picture></td></tr></table>"

echo $quote > README.md
echo $note >> README.md
echo $blank_space >> README.md
echo $title >> README.md
echo $blank_space >> README.md
echo $output >> README.md
echo $blank_space >> README.md
echo $github_stats >> README.md
echo $blank_space >> README.md
echo $status >> README.md
echo $blank_space >> README.md
echo $spotify >> README.md
echo $blank_space >> README.md
echo $stats_2 >> README.md
echo $blank_space >> README.md
echo $stats_3 >> README.md
echo $blank_space >> README.md
