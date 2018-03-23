*** Settings ***
Documentation    This is Binary conversion
Force Tags  regression

*** Test Cases ***
Test title1
  [Tags]  smoke
  ${x}=  Convert to Binary  10
  log  ${x}

Test title2
  [Tags]  retesting
  [Documentation]  This is Octal conversion
  ${x}=  Convert to Octal  10
  log  ${x}