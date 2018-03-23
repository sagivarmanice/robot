*** Settings ***
Library  ExcelLibrary

*** Test Cases ***
Create Excel
   Given Create Excel Document  Data.xlsx
    When Write Excel Cell  1  1  Test Value  Sheet
    And Save Excel Document  data.xlsx