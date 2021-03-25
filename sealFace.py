import os
import sys
import pathlib

def main(args):

	if len(args) != 2:
		print("Call as: python sealFace.py YOURFOLDERNAME")
		return
	directory = args[1]
	arguments = ""
	for filename in os.listdir(directory):
		if filename.endswith(".jpg") or filename.endswith(".jpeg") or filename.endswith(".png") or filename.endswith(".JPG"): 
			#print(os.path.join(directory, filename))
			arguments += (directory + "/" + filename + " ")
	chipfolder = directory+"Chips"
	try:
		os.mkdir(chipfolder)
	except:
		pass
	os.system("./seal.exe seal.dat " + chipfolder + " " + arguments)

if __name__ == "__main__":
	main(sys.argv)
