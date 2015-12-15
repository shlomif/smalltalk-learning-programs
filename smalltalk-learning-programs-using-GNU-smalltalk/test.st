Object subclass: #Student
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Examples'!

!Student methodsFor: 'initialize'!
myMethod: someVal
    | newValue |
    newValue := (someVal*2).
    Transcript show: (newValue printString).
    Transcript cr.
    ^newValue+1.
!!
| arr myStudent ret |
Transcript show: ((5 factorial) printString).
Transcript cr.
arr := (Array new: 20).
Transcript show: (arr printString).
Transcript cr.

myStudent := Student new.
ret := myStudent myMethod: 50.
Transcript show: (ret printString).
Transcript cr.

!!

