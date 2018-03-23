*** Variables ***
${a}=  50
${b}=  hello
@{c}=  10  20  hello  hi
&{d}=  1=10  2=Two  three=30


*** Test Cases ***
Testing Variable types
  Log  ${a}
  Log  ${b}
  Log  @{c}[0]
  Log  @{c}[1]
  Log  &{d}[three]
