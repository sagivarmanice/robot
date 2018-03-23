*** Settings ***
Resource   excelsupport.robot
Library  Res1.py
Variables  Test.yaml
*** Test Cases ***
Addition
  ${s}  Add  ${b}  &{d}[e]
  Log  ${s}

Subtraction
  ${s}  Sub  1  2
  Log  ${s}

Add1
   ${k}  ml  5  10
   Log  ${k}