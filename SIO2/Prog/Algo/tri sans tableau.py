#COPYRIGHT BASTIEN

def trisanstab():
    print ("Saisir a")
    a = int(input())
    print ("Saisir b")
    b = int(input())
    print ("Saisir c")
    c = int(input())    

    #TROIS NOMBRES EGAUX
    if (a == b and a == c):
        Max = a
        Min = a

    #DEUX NOMBRES EGAUX
        
    if (a == b and a > c):
        Max = a
        Min = c

    if (a == c and a > b):
        Max = a
        Min = b

    if (b == c and b > a):
        Max = b
        Min = a    
    

   #TROIS NOMBRES DIFFERENTS     
    if (a > b and a > c):
        Max = a
    elif (b > a and b > c):
        Max = b
    elif (c > a and c > b):
        Max = c

    if (a < b and a < c):
        Min = a
    elif (b < a and b < c):
        Min = b
    elif (c < a and c < b):
        Min = c

    print ("Max : ", Max,"  Min : ", Min)

trisanstab()
