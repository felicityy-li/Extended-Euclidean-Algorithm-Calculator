# Extended Euclidean Algorithm Calculator 🧮

## How it was Developed 
I converted and implemented this Extended Euclidean Algorithm in Racket during my first term of university when I studied both this algorithm for linear diophantine equations in math class as well as functional programming using the Racket language in my CS class.

## Usage 
Recommended to run this program on Racket's own IDE: DrRacket. 

## To Use the Calculator
* call the ```(EEA-calculator EEA-list)``` function by passing a list of 2 lists of `x, y, q, r` values. 

Example: 
```(define my-list (list (list 1 0 1386 0) (list 0 1 322 0)))```
```(EEA-calculator my-list)```
