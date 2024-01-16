*** Settings ***
Library   RequestsLibrary

*** Variables ***
${base_url}   https://dummyjson.com/
${num}       2

*** Test Cases ***
Get Weather Info
    Create Session   mysession   ${base_url}
    ${response}=     Get On Session   mysession   products/${num}
    Log To Console   ${response}
