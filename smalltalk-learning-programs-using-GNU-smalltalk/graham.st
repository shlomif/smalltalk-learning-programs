PackageLoader fileInPackage: #SUnit!
TestCase subclass: #MsfTest
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'SUnit-Tests'!
Object subclass: #SquaringFactors
    instanceVariableNames: 'numbers'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Program'!
!SquaringFactors methodsFor: 'initialization'!
from: myarr
    numbers := (OrderedCollection new: myarr).
!
!MsfTest methodsFor: 'testing'!
testMultiply
    |n m ret|
    n := (SquaringFactors new) from: #(2).
    m := (SquaringFactors new) from: #(3).
    ret := ((n multiplyBy: m) getArray).
    self assert: (ret at: 1) = 2.
    self assert: (ret at: 2) = 3.
!!
|t|
t := (MsfTest new).
t run: #testMultiply.
!
