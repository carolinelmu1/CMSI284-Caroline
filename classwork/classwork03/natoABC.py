def nato_alphabet():

    nato_abc = {'A':'ALPHA', 'B':'BRAVO', 'C':'CHARLIE', 'D':'DELTA', 'E':'ECHO', 'F':'FOXTROT', 'G':'GOLF', 'H':'HOTEL',
    'I':'INDIA', 'J':'JULIETT', 'K':'KILO', 'L':'LIMA', 'M':'MIKE', 'N':'NOVEMBER', 'O':'OSCAR', 'P':'PAPA', 'Q':'QUEBEC', 'R':'ROMEO',
    'S':'SIERRA', 'T':'TANGO', 'U':'UNIFORM', 'V':'VICTOR', 'W':'WHISKEY', 'X':'X-RAY', 'Y':'YANKEE', 'Z':'ZULU'}

    user_input = input('Enter a word: ').upper()
    user_input = ''.join(char for char in user_input if char.isalpha())

    for char in user_input:
        print(nato_abc[char])

nato_alphabet()