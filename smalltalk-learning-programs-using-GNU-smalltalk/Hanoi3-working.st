Object subclass: #Hanoi
    instanceVariableNames: 'towers len'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Examples'!
!Hanoi methodsFor: 'initialize'!
play: newLen
    len := newLen.
    self initTowers.
    self printTowers.
    self moveSeq: len from: 1 to: 2.
!
getFirstTower
    |tower|
    tower := (OrderedCollection new: len).
    1 to: len do: [:i | tower addLast: (len - i+1) ].
    ^tower.
!
initTowers
    towers := (Array new: 3).
    towers at: 1 put: (self getFirstTower).
    towers at: 2 put: (OrderedCollection new: 0).
    towers at: 3 put: (OrderedCollection new: 0).
!!
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

