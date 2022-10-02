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
title="# About Me - Ng Zhe Kai"
output="**Howdy! 👋  I'm *Ng Zhe Kai*  （ぎるばって呼んでいいよ ✌️）**"
output_1="Also the Hatsune Miku Enthusiast and the Great Escapist ヽ(=´▽\`=)ﾉ"
blank_space=""
quote="**<q>${quote}</q>** -<em>${author}</em>"
note="> The Quote above will be updated on a frequency basis of 2-3 hours~"
status="## Status [自分の情報]✅"
status_1="- 🙍‍♂️ Data Communication & Networking Student (Multimedia University Melaka)"
status_2="- 🌱 I’m currently learning **the basic of OpenCV** and **Japanese [日本語]**"
status_3="- 😺 Switched between **Linux** and **Windows** back and forth !"
status_4="- 📫 How to reach me <a href="mailto:ngzhekai@pm.me">**ngzhekai@pm.me**</a>"
status_5="- ⚡ Fun fact :arrow_right:  **初音ミク*fufu*可愛すぎる、 Hatsune Miku *fufu* too cute、初音fufu太可爱了 爱了爱了**"
miku_img="![image](https://user-images.githubusercontent.com/61905056/165332700-d0be53f6-171c-40be-9e4c-874cafd34252.png)"
url="> Imported from this [Repo](https://github.com/ngzhekai/Green-Commit-Quotes)"

echo $title > README.md
echo $blank_space >> README.md
echo $output >> README.md
echo $blank_space >> README.md
echo $output_1 >> README.md
echo $blank_space >> README.md
echo $quote >> README.md
echo $note >> README.md
echo $blank_space >> README.md
echo $url >> README.md
echo $blank_space >> README.md
echo $status >> README.md
echo $blank_space >> README.md
echo $status_1 >> README.md
echo $status_2 >> README.md
echo $status_3 >> README.md
echo $status_4 >> README.md
echo $status_5 >> README.md
echo $blank_space >> README.md
echo $miku_img >> README.md

dates="$(date +'%d/%m/%Y')"
time="$(date +'%T')"

git config --local user.email "ngzhekai@gmail.com"
git config --local user.name "Ng Zhe Kai"
git commit -am "Updated on ($dates) - $time"

