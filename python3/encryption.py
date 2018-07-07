## ############################################### ##
## ENCRYPTION MODULE USING A KIND OF CAESAR CIPHER ##
## Using Python 3.5.3                by Schn33W0lf ##
## DC: x = y - (k[0] + k1) mod m                   ##
## EC: y = x + (k[0] + k1) mod m                   ##
## k1   = 0 at beginning                           ##
## k[0] = key                                      ##
## k[1] = amount, added to k1 after each character ##
## y    = encoded string                           ##
## x    = decoded string                           ##
## m    = (mod) max height of ascii number         ##
##        (in a range of 0 up to 9, it is 10)      ##
## ############################################### ##

## notes for convert():
##     ord() and chr() converts ints to ascii and ascii to ints.
##     the maximum range is 1,114,111.
##     (source: [https://docs.python.org/3/library/functions.html#chr], 2nd paragraph)
##     this is important for m in decode() and encode.

## HOW TO USE:
##     decode(k = [int, int], y = [int, int, ...], m = int)                         ## decoding numbers in an array
##     encode(k = [int, int], y = [int, int, ...], m = int)                         ## encoding numbers in an array
##     convert(x)                                                                   ## converting ascii numbers in an array to ascii characters as a string and
                                                                                    ##     ascii characters in a string to ascii numbers in an array
                                                                                    ##     'asdf' <-> [97, 115, 100, 102]
##     encryption(char = string, keys = [int, int], method = 'DC'/'EC')             ## combining all the functions together
                                                                                    ##     'asdf' <-> bugj if keys is [0,1]
##     encryptFile(file = [string, string], keys = [int, int], method = 'DC'/'EC')  ## read a file, de-/encode it, save it as a copy

def decode(k = None, y = None, m = None):
    if (k == None and x == None and m == None):
        print('ERROR in decode: No Inputs! READ MANUAL')
    elif (type(y) == list and type(k) == list and type(m) == int):
        if (type(k[0]) == int and type(k[1]) == int):
            ## DC: x = y - (k[0] + k1) mod m 
            x = []
            k1 = k[1]
            for i in range(len(y)):
                Xnew = y[i] - (k[0] + k1)
                while Xnew < 0:
                    Xnew += m
                x.append(Xnew)
                k1 += k[1]
            return x
        else:
            print('ERROR in decode (1): Invalid Input Type (k[0], k[1])! READ MANUAL')
    else:
        print('ERROR in decode (0): Invalid Input Type (x, k, m)! READ MANUAL')
def encode(k = None, x = None, m = None):
    if (k == None and x == None and m == None):
        print('ERROR in encode: (0) No Inputs! READ MANUAL')
    elif (type(x) == list and type(k) == list and type(m) == int):
        if (type(k[0]) == int and type(k[1]) == int):
            ## EC: y = x + (k[0] + k1) mod m
            y = []
            k1 = k[1]
            for i in range(len(x)):
                Ynew = x[i] + (k[0] + k1)
                while Ynew >= m:
                    Ynew -= m
                y.append(Ynew)
                k1 += k[1]
            return y
        else:
            print('ERROR in encode (1): Invalid Input Type (k[0], k[1])! READ MANUAL')
    else:
        print('ERROR in encode (0): Invalid Input Type (x, k, m)! READ MANUAL')
def convert(x = None):
    if (type(x) == list):
        y = ''
        for i in range(len(x)):
            y += str(chr(x[i]))
        return y
    elif (type(x) == str):
        y = []
        for i in x:
            y.append(ord(i))
        return y
    else:
        print('ERROR in convert (0): Invalid Input Type (x)! READ MANUAL')
def encryption(char = None, keys = None, method = None):
    if (char == None and keys == None and method == None):
        print('ERROR in encryption (0): No Inputs! READ MANUAL')
    elif (type(keys) == list and type(char) == str and type(method) == str):
        if (type(keys[0]) == int and type(keys[0]) == int):
            if (method == 'DC'):
                return convert(x = decode(k = keys, y = convert(x = char), m = 1114111))
            elif (method == 'EC'):
                return convert(x = encode(k = keys, x = convert(x = char), m = 1114111))
            else:
                print('ERROR in encryption (2): Invalid Input (method)! READ MANUAL')
        else:
            print('ERROR in encryption (1): Invalid Input Type (keys[0], keys[1])! READ MANUAL')
    else:
        print('ERROR in encryption (0): Invalid Input Type (char, keys, method)! READ MANUAL')
def encryptFile(file = None, keys = None, method = None):
    if (file == None and keys == None and method == None):
        print('ERROR in encryptFile (0): No Inputs! READ MANUAL')
    elif (type(keys) == list and type(file) == list and type(method) == str):
        if (type(keys[0]) == int and type(keys[0]) == int and type(file[0]) == str and type(file[1]) == str):
            inputFile = open(file[0], 'r')
            char = inputFile.read()
            inputFile.close()
            if (method == 'DC'):
                outputFile = open(file[1], 'w')
                outputFile.write(convert(x = decode(k = keys, y = convert(x = char), m = 1114111)))
                outputFile.close()
            elif (method == 'EC'):
                outputFile = open(file[1], 'w')
                outputFile.write(convert(x = encode(k = keys, x = convert(x = char), m = 1114111)))
                outputFile.close()
            else:
                print('ERROR in encryptFile (2): Invalid Input (method)! READ MANUAL')
        else:
            print('ERROR in encryptFile (1): Invalid Input Type (keys[0], keys[1], file[0], file[1])! READ MANUAL')
    else:
        print('ERROR in encryptFile (0): Invalid Input Type (file, keys, method)! READ MANUAL')
