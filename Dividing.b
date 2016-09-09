MIT License

Copyright (c) 2016 SirJosh3917

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files
(the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject
to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

== Dividing ==

$ About the license $

Just in your brainfuck code say "thanks to sirjosh3917 for dividing code"

$ Dividing - Compacted $

(Number 1)>(Number 2)>[-]>[-]>[-]<<<<[>[->+>+<<]>>[-<<+>>]<<[-<->]>>>+<<[-<+>]<<]<[-]>[-]>[-]>[-]>[-]>[-<<<<+>>>>]

$ Example Usage $

NOTICE: This code is fragile, and if two numbers can't divide equally, it could give an un-expected answer

50 divided by 5

++++++++++
++++++++++
++++++++++
++++++++++
++++++++++
>
+++++
>[-]>[-]>[-]<<<<[>[->+>+<<]>>[-<<+>>]<<[-<->]>>>+<<[-<+>]<<]<[-]>[-]>[-]>[-]>[-]>[-<<<<+>>>>]
>, Pause so you can look at the cells with interpeter

$ Dividing - Explained $

(Number 1)
>(Number 2)
>[-]>[-]>[-] Clean up number 3, 4 and 5
<<<< Go back to number 1

[ While there are numbers in number 1

  > Goto number 2

  Put number 2 into 3 and 4

  [ While there are numbers in number 2
    - Remove 1 from number 2
    > Goto number 3
    + Add 1 to number 3
    > Goto number 4
    + Add 1 to number 4
    << Goto number 2
  ]
  >> Goto number 4
  
  Restore number 2 by replacing it with number 4
  
  [ While there are numbers in number 4
  	- Remove 1 from number 4
  	<< Goto number 2
  	+ Add 1 to number 2
    	>> Goto number 4
  ]
  
  << Goto number 2
  
  [ While there are numbers in number 2
  	- Remove 1 from number 2
  	< Goto number 1
  	- Remove 1 from number 1
  	> Goto number 2
  ]
  
  >>> Goto number 5
  
  + Add 1 to number 5
  
  << Goto number 3
  
  Restore number 2 by replacing it with number 3
  
  [ While there are numbers in number 3
  	- Remove 1 from number 3
  	< Goto number 2
  	+ Add 1 to number 2
    > Goto number 3
  ]
  
  << Goto number 1
  
]

[-]>[-]>[-]>[-] Clean up numbers 1, 2, 3, and 4
> Goto number 5

Transfer number 5 to number 1

[ While there are numbers in number 5
  - Remove 1 from number 5
  <<<< Goto number 1
  + Add 1 to number 1
  >>>> Goto number 2
]