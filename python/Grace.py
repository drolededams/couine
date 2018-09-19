"""commentaire hors fonction"""
define_1 = 'Grace_kid.py'
define_2 = 'w'

def print_it(X):
 f = open(define_1, define_2)
 s = "%c%c%ccommentaire hors fonction%c%c%c%cdefine_1 = 'Grace_kid.py'%cdefine_2 = 'w'%c%cdef print_it(X):%c f = open(define_1, define_2)%c s = %c%s%c%c f.write(s %c (34, 34, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 37, 10, 10, 10))%c%cprint_it(1)%c"
 f.write(s % (34, 34, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 37, 10, 10, 10))

print_it(1)
