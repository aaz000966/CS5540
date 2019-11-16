### CS5540
### Principles of Big Data Management 
### https://github.com/aaz000966/CS5540/tree/master/_phase2
### Hello again
###  This is a brief of phase 2 completion required for class 5540 under the supervision of Dr. Praveen Rao.

In this phase, all groups are required to finish the following steps:
* Figure out how to store the tweets in Spark SQL
* Write interesting analytic queries to explore and understand the data – at least 10 queries (must be different conceptually)
* Develop interesting visualizations (e.g., pie chart, heat map, bar graphs)

first of all, we will insert our json file that has 1 million tweets into hdfs: 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20170746.png)

it's the same as the last phase file but with more dataset

![tweets](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20110600.png)

new tweets link: https://drive.google.com/open?id=11PLgbBBHmHiHzsFUft8u7SVTBos4-Fq8

next, time to start hadoop deamons

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20171217.png)

for this phase, we will use zeppelin to make organized code blocks that connected to hadoop_home and Spark_hope to render everything in the shell

more on zeppelin 👍 https://zeppelin.apache.org/

starting zeppelin daemons 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20171306.png)

zeppelin is now accessible through the web browser 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20171415.png)

The notebook we've created 
![](https://raw.githubusercontent.com/aaz000966/CS5540/master/_phase2/Doc/Annotation%202019-11-03%20171552.png)


now let's start working on the dataset. fist of all, importing:
![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20171518.png)
Now, to run queries on apache zeppelin, we just need to specify the %SQL command at first. These are the following supported commands on zeppelin:

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173729.png)

now, let's start by querying the highest followed account using the follower_count record on our JSON file: 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20171951.png)

in table form: 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20172004.png)

next, we will see the highest languages used; English is dominating! 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20172019.png)

original table 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20172040.png)

next, the number of followers for grouped users count! it's obvious that the higher you go, the less you get! 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20172114.png)

Next, number of tweets from verified account. only 10k tweets out of a million!

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20172551.png)

Table:

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20172612.png)

Next, the top location that users tweeting from. Brazil in the lead!

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173112.png)

Table:

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173127.png)

next, the most Favorited tweets

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173231.png)

next, the most active accounts or the account with the highest number of tweets by names: 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173300.png)

Next, account with the highest number of friends or followed accounts:

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173328.png)

in a table for demonstration: 

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173350.png)

lastly, tweets from an iPhone device vs non-iPhone devices (almost half!)

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/Annotation%202019-11-03%20173430.png)

and lastly:

![](https://github.com/aaz000966/CS5540/blob/master/_phase2/Doc/2019-11-15%20at%209.03.08%20PM.jpeg)



To download the source code, Please follow this JSON file (zeppelin paragraph):
https://github.com/aaz000966/CS5540/blob/master/_phase2/src/Phase2.json

thank you so much
