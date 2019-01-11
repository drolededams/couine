"""
 commentaire hors fonction
"""
define_1 = 'Grace_kid'
define_2 = '.py'
define_3 = 'w+'

def grace(X):
 try:
  f = open(define_1 + define_2, define_3)
 except:
  print ("Error: Can't open Grace_kid.py")
  return
 s = "%c%c%c%c commentaire hors fonction%c%c%c%c%cdefine_1 = 'Grace_kid'%cdefine_2 = '.py'%cdefine_3 = 'w+'%c%cdef grace(X):%c try:%c  f = open(define_1 + define_2, define_3)%c except:%c  print (%cError: Can't open Grace_kid.py%c)%c  return%c s = %c%s%c%c f.write(s %c (34, 34, 34, 10, 10, 34, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 34, s, 34, 10, 37, 10, 10, 10, 10))%c f.close()%c%cgrace(1)%c"
 f.write(s % (34, 34, 34, 10, 10, 34, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 34, s, 34, 10, 37, 10, 10, 10, 10))
 f.close()

grace(1)
