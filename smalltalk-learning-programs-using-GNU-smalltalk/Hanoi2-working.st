Object subclass: #Hanoi
    instanceVariableNames: 'towers len'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Examples'!
!Hanoi methodsFor: 'initialize'!
printSingleTower: index
    Transcript show: ': '.
    (towers at: index) do: [
        :each|
        Transcript show: (each printString).
        Transcript show: ' '.
        ]
        .
    Transcript cr.
!!
!Hanoi methodsFor: 'initialize'!
printTowers
    1 to: 3 do: [:i| self printSingleTower: i].
    Transcript cr.
!!

!Hanoi methodsFor: 'initialize'!
moveSeq: numPieces from: f to: t
    |other fromTower toTower otherTower|
    other := (3+2+1-f-t).
    fromTower := (towers at: f).
    toTower := (towers at: t).
    otherTower := (towers at: other).
    (numPieces = 1)
        ifTrue: [
            toTower add: (fromTower removeAtIndex: (fromTower size) ).
            self printTowers.
        ]
        ifFalse: [
            self moveSeq: (numPieces - 1) from: f to: other.
            self moveSeq: 1 from: f to: t.
            self moveSeq: (numPieces - 1) from: other to: t.
        ]
        .

!!

!Hanoi methodsFor: 'initialize'!
play: newLen
    | n firstTower |
    len := newLen.
    towers := (Array new: 3).
    firstTower := (OrderedCollection new: len).
    1 to: len do: [:i | firstTower addLast: (len - i+1) ].
    towers at: 1 put: firstTower.
    towers at: 2 put: (OrderedCollection new: 0).
    towers at: 3 put: (OrderedCollection new: 0).
    self printTowers.
    self moveSeq: len from: 1 to: 2.
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
myHanoi play: 5.
!
!!

