# primeNumberVisualisaiton
## Description:
It's actually an example of [Ulam Sprial](https://en.wikipedia.org/wiki/Ulam_spiral).
I've done this as a part of PFE's training. PFE's training can be found on their **[forum](http://ele.petnica.rs/forum/)**
## Installation:
In order to run the code you will need a Processing 3.0 IDE: **[Download](https://processing.org/download/)**
Then you will need to download or clone the code from main folder of a git repo.
## Adjusting the parameters
#### boolean toggleText;
In order to toggle the number displayed in each of the cells you will need to set this as true. Example **boolean toggleText = True;**
I would suggest to use this only if your cell is at least 16 pixels wide since you will need quite a space for some bigger numbers.
#### boolean stroke; 
By turning this ON, you will be displayed the lines seperating the cells. This can be used to better understand the whole concept.
Example **boolean stroke = True;**.
#### int fieldSize;
This is a parameter determinating the cell size. You are free to change it as low as 1 pixel but in order for everything to be displayed good, you will need to disable stroke and toggleText.

#### int num;
This is a number that is displayed in the middle. 41 is pretty interesting number since it seems to generate the most prime numbers on the line(starting from bottom left, to top right of the screen). This particular polynomial is **[related to Euler's prime-generating polynomial](https://en.wikipedia.org/wiki/Formula_for_primes#Prime_formulas_and_polynomial_functions):** x2 − x + 41
