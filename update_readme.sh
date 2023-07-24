#!/bin/bash

# ++++++++++++++++++++++++++++++++++

# README.md by ngzhekai

# Imported from Green-Commit-Quotes

# ++++++++++++++++++++++++++++++++++

source=$(curl https://zenquotes.io/api/random)

# Get the Quote and Author

quote=$(echo $source | jq -r .[].q)
author=$(echo $source | jq -r .[].a)

# Get the Date and Time

dates="$(date +'%d/%m/%Y')"
time="$(date +'%T')"

# Concatenate the string

# output="Howdy! 👋 I am _Gilbert Ng_（JP: ぎるばって呼んでいいよ ✌️）"

line_space="---"
blank_space=""
quote="### **<q>${quote}</q>** -<em>${author}</em>"
note="> Updated on $dates - (UTC) $time"
status="### My Status [自分の情報]✅"

# status_1="- 🙍‍♂️ Data Communication & Networking Student (Multimedia University Melaka)"

# status_2="- 🌱 I’m currently learning **about life**"

# spotify="
# <a
# href='https://open.spotify.com/user/flxv095c8u53mlz4cjvagkgzl'
# target='\_blank'
# rel='noopener noreferrer'

# >   <picture>

#     <source media=\"(prefers-color-scheme: dark)\"
#     srcset=\"https://spotify-readme-ofldzkxst-ngzhekai.vercel.app/api?theme=dark&spin=true\"/>
#     <source media=\"(prefers-color-scheme: light)\"
#     srcset=\"https://spotify-readme-ofldzkxst-ngzhekai.vercel.app/api?spin=true\"/>
#     <img alt=\"Shows an real-time spotify now-playing widget white-theme in
#     light mode and dark-theme in dark mode.\"
#     src=\"https://spotify-readme-ofldzkxst-ngzhekai.vercel.app/api?theme=dark&spin=true\"/>

#   </picture>
# </a>
# "

new_github_stats="
<a href=\"https://github.com/ngzhekai/github-readme-stats/\">
  <img height=200 align=\"center\" src=\"https://github-stats-ngzhekai.vercel.app/api?username=ngzhekai&show_icons=true&count_private=true&theme=dracula&hide_border=true\" />
</a>
<a href=\"https://github.com/ngzhekai/github-readme-stats/\">
  <img height=200 align=\"center\" src=\"https://github-stats-ngzhekai.vercel.app/api/top-langs/?username=ngzhekai&layout=donut&theme=dracula&hide_border=true\" />
</a>
"

new_tech_stack="
<p align=\"center\">
  <img src=\"https://skillicons.dev/icons?i=js,py,java,c,cpp,html,css,bootstrap,react,postgres,mysql,sqlite,nodejs,vercel,nextjs,fastapi,androidstudio,linux,postman,git,neovim,githubactions&perline=11\" />
</p>
"

tech_stack='
<table>
  <td colspan="5">
    <h3 align="center">Languages and Tools</h3>
  </td>
  <tr>
    <td>
      <h4 align="center">Frontend</h4>
    </td>
    <td>
      <h4 align="center">Backend</h4>
    </td>
    <td>
      <h4 align="center">Framework</h4>
    </td>
    <td>
      <h4 align="center">Languages</h4>
    </td>
    <td>
      <h4 align="center">Others</h4>
    </td>
  </tr>
  <tr>
    <td>
      <p align="center">
        <a href="https://skillicons.dev">
          <img src="https://skillicons.dev/icons?i=html,css,bootstrap,react&perline=2" />
        </a>
      </p>
    </td>
    <td>
      <p align="center">
        <a href="https://skillicons.dev">
          <img src="https://skillicons.dev/icons?i=postgres,mysql,sqlite,nodejs,vercel&perline=3" />
        </a>
      </p>
    </td>
    <td>
      <p align="center">
        <a href="https://skillicons.dev">
          <img src="https://skillicons.dev/icons?i=nextjs,fastapi&perline=3" />
        </a>
      </p>
    </td>
    <td>
      <p align="center">
        <a href="https://skillicons.dev">
          <img src="https://skillicons.dev/icons?i=js,py,java,c,cpp&perline=3" />
        </a>
      </p>
    </td>
    <td>
      <p align="center">
        <a href="https://skillicons.dev">
          <img src="https://skillicons.dev/icons?i=androidstudio,linux,postman,git,neovim,githubactions&perline=3" />
        </a>
      </p>
    </td>
  </tr>
</table>
'

echo $blank_space >README.md
echo $new_github_stats >>README.md
echo $blank_space >>README.md
echo $quote >>README.md
echo $note >>README.md
echo $line_space >>README.md
echo $blank_space >>README.md
echo $new_tech_stack >>README.md
echo $blank_space >>README.md
