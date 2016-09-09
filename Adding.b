== Adding ==

$ Adding - Compacted $

(Number 1)>(Number 2)<[->+<]>[-<+>]<

$ Example Usage $

10 plus 3
++++++++++>+++<[->+<]>[-<+>]<
>, Pause so you can look at cells with interpeter

$ Adding - Explained $

(Number 1)
>(Number 2)
< Goto number 1

Actual Adding

[ While there are numbers in number 1
  - Remove 1 from number 1
  > Goto number 2
  + Add 1 to number 2
  < Goto number 1
]
> Goto number 2

Shift all the numbers from Number 2 to Number 1

[ While there are numbers in number 2
  - Remove 1 from number 2
  < Goto number 1
  + Add 1 to number one
  > Go back to number 2
]
< Goto number 1