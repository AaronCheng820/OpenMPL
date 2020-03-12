import sys
from os import path
sys.path.append('./build/src')
import openmpl_cpp
openmpl = openmpl_cpp.SimpleMPL()
conflict_num = openmpl.get_conflict_num()
print("conflict_num: ", conflict_num)
