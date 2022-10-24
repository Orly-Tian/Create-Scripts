#!/bin/python3


import os

def create():
  with open(file, "w")as f:
    f.write("file" + str(k))

for i in range(0, 20):
  k = "%02d" % i
  dir = "/root/file/"
  file = dir + "file" + str(k)
  
  if os.path.exists(dir):
    if os.path.exists(file):
      os.remove(file)
      create()
    else:
      create()

  else:
    os.mkdir(dir)
    create()
