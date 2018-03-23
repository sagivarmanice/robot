*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title1
  ${x}=  Convert to Binary  10
  log  ${x}

Test title2
  [Documentation]  This is Octal conversion
  ${x}=  Convert to Octal  10
  log  ${x}
  log ${x}
