This is just a simple notepad/bootloader for a z80 computer.
The only thing you really need for this to work on your z80 is a special lookup table for keys.
(I never included one because I got lazy lol)
How to use:
You press a key 0-F to represent the first nibble in an instruction
Press a key again to represent the second nibble.
After two instructions, its pushed to the stack.
And after writing everything, the NMI is triggered to start running everything.
### NOTE ###
Your code will start running at hex 8004 but the stack pushes down, meaning you will have to input backwards.
Also, code cannot exceed anything past hex value 8004.
