import xml.etree.ElementTree as xmlElementTree

ROBOT_LISTENER_API_VERSION = 3

def output_file(path):
    root = xmlElementTree.parse(path).getroot()
    for suite_tag in root.find('.'):
        suite_name = suite_tag.attrib.get("name")
        for test_tag in suite_tag.findall('./test'):
            if test_tag != None:
                test_name = test_tag.attrib.get("name")
                status_tag = test_tag.find('./status')
                status = status_tag.attrib.get("status")
                print("{}:{} with status= {}".format(
                    suite_name, test_name, status))
