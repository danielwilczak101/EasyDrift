from turtle import shape
import pyrealsense2 as rs
import numpy as np
import cv2
from PIL import Image,ImageOps

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

images = []

try:
    while True:

        # Wait for a frames:  color
        frames = pipeline.wait_for_frames()
        color_frame = frames.get_color_frame()
        color_image = np.asanyarray(color_frame.get_data())

        # Show images
        cv2.namedWindow('RealSense', cv2.WINDOW_AUTOSIZE)
        cv2.imshow('RealSense', color_image)

        key = cv2.waitKey(1)

        if key == 32:
            # SPACEBAR pressed
            print("Image Saved.")

            # Take the current frame and convert it to shape 64,64 and greyscale.
            image = Image.fromarray(color_image).resize((64,64))
            image = ImageOps.grayscale(image)
            image = np.array(image).reshape([64,64])

            # Add it to a list so we can save it later.
            images.append(image)
        
        if key == 68:
            # Save the current list 
            pass

        if  key == 27:
            # ESC pressed
            print("Escape hit, closing...")
            break

finally:
    # Get the user to give a label to the images you want to capture
    label = input("Enter label of saved images:")

    # Save all image array to a file.
    np.savez(label, images=images, label=label)

    # Stop streaming
    pipeline.stop()