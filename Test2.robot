*** Settings ***
Documentation    This is Binary conversion
Default Tags  d1

*** Test Cases ***
Test title1
  [Tags]  t1
  ${x}=  Convert to Binary  10
  log  ${x}

Test title2
  [Documentation]  This is Octal conversion
  ${x}=  Convert to Octal  10
  log  ${x}