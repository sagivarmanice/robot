*** Settings ***
Library  SeleniumLibrary  30  30
#Library  SeleniumLibrary implicit_wait=30
Library  OperatingSystem

*** Test Cases ***
Opening Browser
    Append To Environment Variable  PATH  ${CURDIR}
#   ${path1}=  C:\\Program Files\\Mozilla Firefox\\firefox.exe
#   Open Browser  http://google.com  gc
#    desired_capabilities=firefox_binary:${path1}
#    Open Browser  http://google.com  browser=gc
    Open Browser  http://google.com  firefox
#    Title Should Be  google
    ${url}=  Get Location
    Should Be Equal As Strings  ${url}  http://http://google.co.in
