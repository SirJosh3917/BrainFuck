== Multiplying ==

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

