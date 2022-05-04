from turtle import shape
import pyrealsense2 as rs
import numpy as np
import cv2
from PIL import Image,ImageOps
import tensorflow as tf

# Configure depth and color streams
pipeline = rs.pipeline()
config = rs.config()

config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)
# For greyscale  rs.format.y16
# For color rs.format.bgr8

# Start streaming
pipeline.start(config)

# Controls
print("-- SPACEBAR to save an example image. --")
print("-- ESC to exit and save images with it's associated label")


model = tf.keras.models.load_model('model.h5')

labels = {
    0:"Left",
    1:"Right",
    2:"Straight"
}

try:
    while True:

        # Wait for a frames:  color
        frames = pipeline.wait_for_frames()
        color_frame = frames.get_color_frame()
        color_image = np.asanyarray(color_frame.get_data())
        
        image = Image.fromarray(color_image).resize((64,64))
        image = ImageOps.grayscale(image)
        image = np.array(image).reshape([1,64,64])
        
        # Show images
        cv2.namedWindow("RealSense", cv2.WINDOW_AUTOSIZE)
        cv2.imshow("RealSense", color_image)
        cv2.setWindowTitle('RealSense', labels[np.argmax(model(image))])

        key = cv2.waitKey(1)

        if  key == 27:
            # ESC pressed
            print("Escape hit, closing...")
            break

finally:

    # Stop streaming
    pipeline.stop()