*** Settings ***
Documentation    Suite description
Force Tags  t1  t2
Default Tags  t3
*** Test Cases ***
Test title1
    [Documentation]
    [Tags]    DEBUG  # t1,t2
    Provided precondition
    When action
    Then check expectations

Test title2
    [Tags]  #t1,t2
    Documentation    Sagi
    Provided precondition
    When action
    Then check expectations


Test title3
   #t1,t2,t3
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test