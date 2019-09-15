from tweet_parser.tweet import Tweet
from tweet_parser.tweet_parser_errors import NotATweetError
import fileinput
import json
import io

def extractUrls(linkList):
  resultList = []
  if isinstance(linkList, list):
    
    for i in linkList:
      resultList.extend(extractUrls(i))

  elif isinstance(linkList, dict):
    for i, j in linkList.items():
      if i.split("_")[-1] == "url": 
        resultList.append(j)
      elif isinstance(j,dict):
        resultList.extend(extractUrls(j))
  return resultList
  
urls = io.open("Urls.txt", "w", encoding="utf-8")
hashtags = io.open("Hashtags.txt", "w", encoding="utf-8")

for line in fileinput.FileInput("tweets.json"):
    try:
        tweet_dict = json.loads(line)
        tweet = Tweet(tweet_dict)
    except (json.JSONDecodeError,NotATweetError):
        pass

    linkList=tweet.tweet_links
    hashtagList=tweet.hashtags

    temp=str(linkList)
    if temp !="[]":
      temp2=extractUrls(linkList)
      for i in temp2:
        if  "…" in str(i):
          continue
        print(i)
        urls.write(i+"\n")


    strHash=str(hashtagList)
    if  strHash!="[]":
      for j in hashtagList:
        print(j)
        hashtags.write(j+"\n")

      

      


        
 

  

      

      




