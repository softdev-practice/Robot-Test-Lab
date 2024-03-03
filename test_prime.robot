*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Test Plus Endpoint
    [Documentation]    true_when_x_is_17
    ${resp}=     GET    http://localhost:6000/is_prime/17
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal     ${resp.text}    ${true}
    Delete All Sessions

Test Plus Endpoint
    [Documentation]    false_when_x_is_36
    ${resp}=     GET    http://localhost:6000/is_prime/36
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal     ${resp.text}    ${false}
    Delete All Sessions

Test Plus Endpoint
    [Documentation]    true_when_x_is_13219
    ${resp}=     GET    http://localhost:6000/is_prime/13219
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal    ${resp.text}    ${true}
    Delete All Sessions
