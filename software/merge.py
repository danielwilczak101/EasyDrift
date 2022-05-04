import matplotlib.pyplot as plt
import numpy as np


from os import walk

path = "dataset/"

# Grab each file in the dataset folder.
files = [filenames for (dirpath, dirnames, filenames) in walk(path)]

# Load each file into a list.
dataset= [np.load(path+filename) for filename in files[0]]

labels = []
images = []
label_names = []

# Load the different datasets into one.
for index,data in enumerate(dataset):
    labels.extend([index] * len(data["images"]))
    images.extend(data["images"])
    label_names.append(data["label"])



labels = np.array(labels)
images = np.array(images)
label_names = np.array(label_names)

np.savez("dataset",labels=labels,images=images,label_names=label_names)
