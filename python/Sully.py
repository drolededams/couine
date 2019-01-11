import os
import sys

if __name__ == "__main__":
 i = 5
 if __file__.find('_') != -1:
  i = i - 1
 if i >= 0:
  try:
   f = open('Sully_' + str(i) + '.py', 'w+')
  except:
   print ("Error: Can't open file.")
   sys.exit(0)
  s = "import os%cimport sys%c%cif __name__ == %c__main__%c:%c i = %d%c if __file__.find('_') != -1:%c  i = i - 1%c if i >= 0:%c  try:%c   f = open('Sully_' + str(i) + '.py', 'w+')%c  except:%c   print (%cError: Can't open file.%c)%c   sys.exit(0)%c  s = %c%s%c%c  f.write(s %c (10, 10, 10, 34, 34, 10, i, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 34, s, 34, 10, 37, 10, 10, 10, 10, 10))%c  f.close()%c  commamd = 'python Sully_' + str(i) + '.py'%c  if i > 0:%c   os.system(commamd)%c"
  f.write(s % (10, 10, 10, 34, 34, 10, i, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 34, s, 34, 10, 37, 10, 10, 10, 10, 10))
  f.close()
  commamd = 'python Sully_' + str(i) + '.py'
  if i > 0:
   os.system(commamd)
