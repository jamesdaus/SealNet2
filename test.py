from PIL import Image
import xml.etree.ElementTree as ET
import os
import sys

output_name = "DataTester"

def main(args):
    if len(args) != 2:
        print("You need to provide a folder")
    try:
        os.mkdir(output_name)
    except:
        pass
    dir = args[1]
    xml = ""
    for filename in os.listdir(dir):
        if filename.endswith(".xml"): 
            xml += (dir + "/" + filename + " ")
    xmlList = xml.split(" ")
    for file in xmlList[:-1]:
        tree = ET.parse(file).getroot()
        images = tree.find("images")
        for image in images:
            f = image.attrib["file"]
            im = Image.open(dir + "/" + f, mode="r")
            counter = 0
            for box in image:
                top = int(box.attrib["top"])
                left = int(box.attrib["left"])
                bottom = top + int(box.attrib["height"])
                right = left + int(box.attrib["width"])
                cropped = im.crop((left, top, right, bottom))
                cropped.save(str(counter) + f)
                counter +=1

if __name__ == "__main__":
    main(sys.argv)