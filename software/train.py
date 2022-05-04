import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import cv2
import math
from tqdm import tqdm
from PIL import Image

import keras
from keras.models import Sequential
from keras.layers import *

import tensorflow as tf
from tensorflow.keras.models import Model

dataset = np.load("dataset.npz")

image = dataset["images"][80]
print(dataset["labels"][80])

np.random.seed(1)

model = Sequential()
model.add(Flatten())
model.add(Dense(128, activation='relu',))
model.add(Dense(128, activation='relu',))
model.add(Dense(3, activation='softmax'))

opt = tf.keras.optimizers.Adam(0.001)
model.compile(loss='SparseCategoricalCrossentropy', optimizer=opt, metrics=["accuracy"])

model.fit(
        dataset["images"],
        dataset["labels"],
        verbose=1,
        epochs=20
    )

model.save("model.h5")

#print(np.argmax(model(image.reshape([1,64,64]))))

