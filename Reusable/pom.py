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


def home_footer_xpath(linkName):
    return "//div[@class='footer__links']//a[text()='"+linkName+"']"     

# List Down all page objets for Kubernetes Application ...

Kubernetes_lgog = "(//a[@class='navbar-brand'])[1]"
Training_Link="//ul/li[3]/a[text()='Training']"
gitLink_xpath="(((//ul[@class='list-inline mb-0'])[2])/li)[1]"
giturlstring="kubernetes"


