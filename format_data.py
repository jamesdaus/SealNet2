#! /usr/local/bin/python3

'''
 Gets a directory and outputs file names and individual names for use in splits
 Assumes each subdir contains only one individual, and the name of the subdir is the name of the individual
 Image extensions are expected, append to the tuple below to extend
'''

import os 
import sys
from pathlib import Path


def get_individuals(directory):
    prefix = Path(directory).resolve()
    extensions = ('png', 'jpg', 'jpeg')
    individuals = {}
    assert(os.path.exists(prefix))

    for item in os.listdir(prefix):
        path = os.path.join(prefix, item)
        if not os.path.isdir(path):
            continue
        name = str(int(item))
        individuals[name] = []
        for file_name in os.listdir(path):
            if file_name.lower().endswith(extensions):
                file_path = os.path.join(path, file_name)
                individuals[name].append(str(file_path))
    
    return individuals

def main():
    args = sys.argv
    if len(args) != 2:
        print("Usage: python format_data.py DIRECTORY")
        return
    directory = args[1]
    individuals = get_individuals(directory)
    labels = list(individuals.keys())
    with open('./referencePhotos.txt', 'w') as gallery:
        for key in labels:
            value = individuals[key]
            #if i >= len(value):
                #continue
            for j in range(len(value)):
                gallery.write(value[j] + ' ' + key + '\n')



if __name__ == "__main__":
    main()