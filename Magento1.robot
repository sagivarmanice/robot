*** Settings ***
Documentation  This suite has register Funtionality
Force Tags  register regression
Library  SeleniumLibrary  30  30
Library  OperatingSystem
Test Template  Negative Register Scenario
#Test Setup  Open My Browser
#Test Teardown  Close All Browsers
Suite Setup  Open My Browser
Suite Teardown  Close All Browsers

*** Test Cases ***
title1  sagi  varma1  sagi.varma@satmetrix.com  Welcome123  ${EMPTY}
title2  sagi  varma2  sagi.varma@satmetrix.com  ${EMPTY}  Welcome123
title3  sagi  varma3  ${EMPTY}  Welcome123  Welcome123

*** Keywords ***
Open My Browser
  Append To Environment Variable  PATH ${CURDIR}
  Open Browser   https://magento.com  gc
  Maximize Browser Window
Negative Register Scenario
   [Arguments]  ${fname}  ${lname}  ${email}  ${pwd}  ${cpwd}
   Go To  https://magento.com
   Click Element  link:MY ACCOUNT
  # Click Element  xpath://span[text()='Register']
   Click Element  //span[text()='Register']
   Input Text  id:firstname   ${fname}
   Input Text  name:lastname   ${lname}
   Input Text  xpath://input[@title='Email Address']   ${email}
   Select From List By Index   name:company_type  3
   Select From List By Label  name:individual_role  Business/sales/marketing/merchandising
   Input Password   name:password   ${pwd}
   Input Password   name:confirmation   ${cpwd}
   Select Frame  //iframe[@role='presentation']
#   Mouse Down   //div[@role='presentation']
   Click Element   class:recaptcha-checkbox-checkmark
   Unselect Frame
   Select Checkbox   id:agree_terms