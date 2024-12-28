# Base image
FROM qt-6-test

# Install dependencies
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    ffmpeg \
    libsm6 \
    libxext6 \
    libgl1-mesa-glx \
    python3-opencv \
    pip \
    python3-pyqt5 \
    && sudo apt-get clean

# Install Python dependencies
RUN pip install --no-cache-dir \
    numpy \
    opencv-python-headless \
    ffmpeg-python

RUN sudo ln -s /usr/bin/python3 /usr/bin/python
