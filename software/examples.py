import matplotlib.pyplot as plt
import numpy as np
import tensorflow as tf
import random

from torch import randint

dataset = np.load("dataset.npz")

model = tf.keras.models.load_model('model.h5')

labels = {
    0:"Left",
    1:"Right",
    2:"Straight"
}

for index,data in enumerate(dataset):
    plt.subplot(1, 3, index+1)
    
    image_number = random.randint(0,110)
    plt.imshow(dataset["images"][image_number],cmap="gray")
    image = dataset["images"][image_number]
    plt.title(labels[np.argmax(model(image.reshape([1,64,64])))])

plt.show()