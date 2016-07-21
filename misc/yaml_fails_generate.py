import os

list = open("../../../main/langs/fkv/misc/test_fails_yaml.txt").readlines()

for entry in list:
	
	os.system(entry)

