# -*- coding: utf-8 -*-
"""
Created on Thu Feb  1 13:17:56 2018

@author: Debayan Deb
"""

from network import Network
import sys
import utils
import facepy.evaluation as fev
import facepy
import numpy as np
import summary

def _find(l, a):
    return [i for (i, x) in enumerate(l) if x == a]


class ImageSet:

    def __init__(self, image_paths, config):
        self.image_paths = image_paths
        self.config = config
        self.images, self.labels = self.parse()
        self.features = None
    def parse(self):
        lines = [line.strip().split(' ') for line in self.image_paths]
        print(line[0])
        print(line[1])
        return utils.preprocess([line[0] for line in lines], self.config, False), [line[1] for line in lines]
    def extract_features(self, model, batch_size):
        self.features = model.extract_feature(self.images, 128)

def identify(logdir, probe, gallery):
    
    uq = list(dict.fromkeys(gallery.labels))
    galFeaturesList = []
    for i in range(len(uq)):
        idx = _find(gallery.labels, uq[i])
        # Get feature vector for gallery images for the same indivdual
        galFeatures = gallery.features[idx]
        # individual feature vector from MAX, Mean, or Min template fusion
        individualFeatures = facepy.linalg.normalize(np.mean(galFeatures, axis=0))
        galFeaturesList.append(individualFeatures)
        
    score_matrix = facepy.metric.cosineSimilarity(probe.features, np.array(galFeaturesList))
    #score_matrix = facepy.metric.cosineSimilarity(probe.features, gallery.features)
#   
    # Get ranks for each probe image
    with open("testResult.txt",'w') as f:
        for i in range(len(probe.labels)):
                sort_idx = np.argsort(score_matrix[i])[::-1]
                predictions = np.array(uq)[sort_idx]
                #                   This is where outputs are stored, check certainty?

                f.write("\n".format(probe.labels[i], predictions[0]))

                #rank = list(predictions).index(probe.labels[i]) + 1
                #score = score_matrix[i][sort_idx][rank-1]
                #prediction = predictions[0]
                #f.write('{},{},{},{}\n'.format(probe.labels[i], rank, score, prediction))
    #return summary.run(logdir)

    
## Load Model
#network = Network()
#model_name = sys.argv[1]
#network.load_model(model_name)
#
#
#
#identify(probe_set, gal_set)    
#
def main():

    network = Network()
    model_name = '/data/james_workspace/SealFaceRecognition/log/seal_net_fold_1/20210405-132756' #sys.argv[1]
    
    config_file = 'config.py'
    config = utils.import_file(config_file, 'config')
    
    network.load_model(model_name)

    probes = []
    gal = []
    with open("testProbe.txt" ,'r') as f:
        for line in f:
            probes.append(line.strip())

    probe_set = ImageSet(probes, config)
    #probe_set.extract_features(network, len(probes))
    #
    with open("testGal.txt", 'r') as f:
        for line in f:
            gal.append(line.strip())
    gal_set = ImageSet(gal, config)


    probe_set.extract_features(network, len(probes))
    gal_set.extract_features(network, len(gal))

    identify(probe_set, gal_set)   

if __name__ == "__main__":
    main()

