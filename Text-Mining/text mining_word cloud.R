library(wordcloud)
library(tm)
#目前R的文字雲功能似乎無法針對中文做運算


# 將大咖的演講放在csv檔，並讀取，可參考範例檔 speech.csv
speech = read.csv("speech on 20130522.csv")

#找出前20大關鍵字
wordcloud(speech$content,colors=brewer.pal(8,"Dark2"),max.words=20,
          scale = c(4,.6), random.color = TRUE ,random.order=FALSE,rot.per = 0
)

#加上標題
title("柏老說了什麼 5/22", cex.main=3,col.main = "Dark Green")
