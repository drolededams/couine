"""commentaire hors fonction"""
def print_it():
 s = "%c%c%ccommentaire hors fonction%c%c%c%cdef print_it():%c%cs = %c%s%c%c%cprint(s %c (34, 34, 34, 34, 34, 34, 10, 10, 32, 34, s, 34, 10, 32, 37, 10, 10, 34, 34, 10, 32, 34, 34, 34, 34, 34, 34, 10, 32))%c%cif __name__ == %c__main__%c:%c%c%c%c%ccommentaire fonction main%c%c%c%c%cprint_it()"
 print(s % (34, 34, 34, 34, 34, 34, 10, 10, 32, 34, s, 34, 10, 32, 37, 10, 10, 34, 34, 10, 32, 34, 34, 34, 34, 34, 34, 10, 32))

if __name__ == "__main__":
 """commentaire fonction main"""
 print_it()
