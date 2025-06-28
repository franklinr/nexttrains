library(rvest)
require(tidyverse)

page <- read_html('https://www.hankyu.co.jp/en/station/html/HK-11_ko_2_w.html')

content = html_nodes(page, css = '.timetable_content') %>% html_elements(xpath="//li") %>% html_text()
#content2=content[93:378]
s = which(content==" Privacy Policy ")
e = which(content=="Return to station page")
content2=content[s:e]
content2=content2[!is.na(content2)]
content2 = content2[!str_detect(content2,"Nishinomiya-kitaguchi")]
content2 = str_replace_all(content2,"^[\n ]+([0-9]+)Minutes","\\1")
content2 = str_replace_all(content2,"Kobe-sannomiya.+","")
content2 = str_replace_all(content2,"(Osaka-umeda).+","")
content2 = str_replace_all(content2,"(Shinkaichi|Kosoku-kobe).+","")
content2 = str_replace_all(content2,"[\n ]+"," ")
content2 = content2[!str_detect(content2,"Minutes")]
content2 = str_replace_all(content2,"[-]*Ltd","l")
content2 = str_replace_all(content2,"Semi","S")
content2 = str_replace_all(content2,"Exp(ress)*","E")
content2 = str_replace_all(content2,"Local","L")
content2 = str_replace_all(content2,"Rapid Service","RS")
content2 = str_replace_all(content2,"Commuter\\s*","C")
content2 = str_replace_all(content2," *［",",\"")
content2 = str_replace_all(content2," *\\[",",\"")
content2 = str_replace_all(content2,"］","\"")
content2 = str_replace_all(content2,"\\]","\"")
content2 = str_replace_all(content2," ","")
content2 = str_replace_all(content2," ","")

onestr = paste(content2,collapse=",")
onestr = str_replace_all(onestr,",[0-9]+time,","],\n[")
onestr = str_replace_all(onestr,",0",",")
cat(onestr)
