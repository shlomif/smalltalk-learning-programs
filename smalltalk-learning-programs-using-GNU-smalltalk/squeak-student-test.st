Object subclass: #Student
    myMethod: someVal
        | newValue |
        newValue := (someVal*2).
        Transcript show: (newValue printString).
        Transcript cr.
        ^newValue+1.

| arr |
Transcript show: ((5 factorial) printString).
Transcript cr.
arr := (Array new: 20).
Transcript show: (arr printString).
Transcript cr.
| myStudent, ret|
myStudent := Student new.
ret := myStudent myMethod: 50.
Transcript show: (ret printString).
Transcript cr.
!

