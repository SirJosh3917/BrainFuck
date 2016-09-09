== Dividing ==

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