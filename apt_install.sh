sudo apt-get install libopenblas-dev liblapack-dev gfortran build-essential
sudo apt-get install python-pip python-dev vim python3-pip
sudo pip install --upgrade pip
sudo pip install scikit-learn scipy opencv-python h5py numpy pandas matplotlib
sudo -H pip3 install scikit-learn scipy opencv-python h5py numpy pandas matplotlib
#tensorflow-gpu  Keras
#I removed tensorflow-gpu and Keras as on 10-30-2017 to work with CUDA 9 and cudnn 7 I need to build from source with tag 1.4
#I would like to compile xgboost from github source.
#Maybe I shoudl also compile tensorflow from source to get best optimization.
