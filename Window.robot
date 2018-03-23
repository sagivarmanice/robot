*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Switch window
  Open Browser  https://www.naukri.com  gc
  Select Window  title:Amazon
  Maximize Browser Window
  Close Browser