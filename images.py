import urllib2
import simplejson
import csv

with open("names.csv", "rU") as csvfile:
    namereader = csv.reader(csvfile, delimiter=",")
    first = True
    for row in namereader:
        if first:
        	first = False
        	continue
    	name = "".join(row)
        url = ('https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q=' + row[0] + '%20' + row[1])
        request = urllib2.Request(url)
        response = urllib2.urlopen(request)
        results = simplejson.load(response)
        print results["responseData"]["results"][0]["unescapedUrl"]



