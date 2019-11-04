### CS5540
### Principles of Big Data Management 
### https://github.com/aaz000966/CS5540
### Hi!
###  This is a brief of phase 1 completion required for class 5540 under the supervision of Dr. Praveen Rao.

At the start, let's have a look at the tweets collected as a single Json file that contains all the 100K tweets organized in records. each record represents a single tweet with the tags attached to it.

![tweets](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20110600.png)

tweets jason file link: https://drive.google.com/file/d/1lfcBntP2U4oKjIIXWVUAPN2gw2wNt5qq/view?usp=sharing

As a second task, we had to extract the URLs and hashtags from this Json file. We did that using python 

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20111156.png)

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20111242.png)

*source code file is located under Source folder with the mentioned files*

Next, we fired our virtual machine since we have hadoop and other utilities installed in there and start the daemons amd copied those extracted txt files to HDFS as shown below

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20115120.png)

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20115156.png)


later on, we started the wordcount example on Hadoop file system using the following command:

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20120710.png)

same goes for hashtags:

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20123353.png)

The result files can be found under Results on the code page

Next, we ran the same functions on Spark using the python implementation:

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20131313.png)

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20131507.png)


Result folders for both hadoop and spark:

![](https://raw.githubusercontent.com/aaz000966/CS5540/master/Documents/Annotation%202019-09-15%20131600.png)

please navigate to Code tab to find the claimed files. Thanks!
