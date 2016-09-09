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

== Multiplying ==

$ About the license $

Just in your brainfuck code say "thanks to sirjosh3917 for multiplying code"

$ Multiplying - Compacted $

(Number 1)>(Number 2)>[-]>[-]<<[>[->+>+<<]>>[-<<+>>]][-]>[-]>>[-]<[-<<+>>]

$ Example Usage $

7 times 4

+++++++>++++>[-]>[-]<<[>[->+>+<<]>>[-<<+>>]][-]>[-]>>[-]<[-<<+>>]
>, Pause so you can look at cells with interpeter

$ Multiplying Explained $

(Number 1)
>(Number 2)
>[-] Clear number 3
>[-] Clear number 4
<<< Go back to number 1

[ While there are numbers in number 1
  
  > Goto number 2
  
  Make a copy of Number 2 in Number 3 and 4
  
  [ While there are numbers in number 2
  	- Remove 1 from number 2
  	> Goto number 3
  	+ Add 1 to number 3
  	> Goto number 4
  	+ Add 1 to number 4
  	<< Goto number 2
  ]
  
  Restore Number 2 from Number 4
  
  >> Goto number 4
  [ While there are numbers in number 4
    - Remove 1 from number 4
  	<< Goto number 2
  	+ Add 1 to number 2
  	>> Goto number 4
  ]
  
  <<< Goto number 1
  
  - Remove 1 from number 1

]

[-] Clean up number 1
>[-] Clean up number 2
>>[-] Clean up number 4
< Goto number 3

[ While there are numbers in number 3
  - Remove 1 from number 3
  << Goto number 1
  + Add 1 to number 1
  >> Goto number 3
]

