from xml.dom import minidom
from pathlib import Path



def PopularCoursesSubLinksXpath(linkName):
    return  "//h4[text()='Popular Courses']/following-sibling::p[1]/a[text()='"+linkName+"']"


def readXML(node_name):
    myxmlDoc = minidom.parse(str(Path(__file__).parent.parent)+"/testdata.xml")
    test_Data = myxmlDoc.getElementsByTagName(node_name)[0]
    return test_Data.firstChild.data 


def myImahePath(imageName):
    path = str(Path(__file__).parent.parent)+"/"+imageName
    return path    




