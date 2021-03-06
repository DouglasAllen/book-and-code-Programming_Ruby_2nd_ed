# Sample code from Programing Ruby, page 56
?a                #=> 97    # ASCII character
?\n               #=> 10    # code for a newline (0x0a)
?\C-a            #=> 1     # control a = ?A & 0x9f = 0x01
?\M-a            #=> 225   # meta sets bit 7
?\M-\C-a       #=> 129   # meta and control a
?\C-?            #=> 127   # delete character
p ?a.ord
p ?\n.ord
p ?\C-a.ord
p ?\M-a.ord
p ?\M-\C-a.ord
p ?\C-?.ord
