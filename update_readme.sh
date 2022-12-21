#!/bin/bash
# ++++++++++++++++++++++++++++++++++
#  README.md by ngzhekai
#  Imported from Green-Commit-Quotes
# ++++++++++++++++++++++++++++++++++ 

source=$(curl https://zenquotes.io/api/random)

# Get the quote and author
quote=$(echo $source | jq -r .[].q)
author=$(echo $source | jq -r .[].a)
# Concatenate the string
title="## About Me"
output="**Howdy! 👋  I'm *Ng Zhe Kai*  （ぎるばって呼んでいいよ ✌️）**"
blank_space=""
quote="**<q>${quote}</q>** -<em>${author}</em>"
note="> The Quote above will be updated on a frequency basis of 2-3 hours~"
status="## Status [自分の情報]✅"
status_1="- 🙍‍♂️ Data Communication & Networking Student (Multimedia University Melaka)"
status_2="- 🌱 I’m currently learning **about life**"
# status_4="- 📫 How to reach me <a href="mailto:ngzhekai@pm.me">**ngzhekai@pm.me**</a>"
status_5="- ⚡ Fun fact :arrow_right:  **Nothing in here, yet.**"
url="Implemented from this [Repo](https://github.com/ngzhekai/Green-Commit-Quotes)"

echo $quote > README.md
echo $note >> README.md
echo $blank_space >> README.md
echo $url >> README.md
echo $blank_space >> README.md
echo $title >> README.md
echo $blank_space >> README.md
echo $output >> README.md
echo $blank_space >> README.md
echo $status >> README.md
echo $blank_space >> README.md
echo $status_1 >> README.md
echo $status_2 >> README.md
# echo $status_3 >> README.md
# echo $status_4 >> README.md
echo $status_5 >> README.md
echo $blank_space >> README.md

dates="$(date +'%d/%m/%Y')"
time="$(date +'%T')"

git config --local user.email "ngzhekai@gmail.com"
git config --local user.name "Ng Zhe Kai"
git commit -am "Updated on ($dates) - $time (UTC) Time Zone"

