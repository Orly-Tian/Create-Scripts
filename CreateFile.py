#!/bin/python3


import os
import shutil

for i in range(0, 20):
  
  k = "%02d" % i
  file = "/root/file"
  
  if os.path.exists(file):
    if os.path.exists(file + "/file" + str(k)):
      os.remove(file + "/file" + str(k))
      with open(os.path.join(file + "/file" + str(k)), "w") as f:
        f.write("file" + str(k))
    with open(os.path.join(file + "/file" + str(k)), "w") as f:
      f.write("file" + str(k))
      
  else:
    os.mkdir(file)
  with open(os.path.join(file + "/file" + str(k)), "w") as f:
    f.write("file" + str(k))
