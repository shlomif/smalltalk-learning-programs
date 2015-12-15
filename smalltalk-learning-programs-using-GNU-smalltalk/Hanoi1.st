Object subclass: #Hanoi
    instanceVariableNames: 'towers len'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Examples'!

!Hanoi methodsFor: 'initialize'!
play: newLen
    | n firstTower |
    len := newLen.
    towers := (Array new: 3).
    firstTower := (Array new: len).
    1 to: len do: [:i | firstTower at: i put: (len - i+1) ].
    towers at: 1 put: firstTower.
    towers at: 2 put: (Array new: 0).
    towers at: 3 put: (Array new: 0).
    Transcript show: (towers printString).
    Transcript cr.
!!
!Hanoi methodsFor: 'initialize'!
myMethod: someVal
    | newValue |
    newValue := (someVal*2).
    Transcript show: (newValue printString).
    Transcript cr.
    ^newValue+1.
!!
| myHanoi |

myHanoi := Hanoi new.
myHanoi play: 3.
!
!!

