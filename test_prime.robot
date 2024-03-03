*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Test Plus Endpoint
    [Documentation]    Test the /is_prime/:a endpoint
    ${resp}=     GET    http://localhost:6000/is_prime/17
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal     ${resp.text}    ${true}
    Delete All Sessions

Test Plus Endpoint
    [Documentation]    Test the /plus/:a/:b endpoint
    ${resp}=     GET    http://localhost:6000/is_prime/36
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal     ${resp.text}    ${false}
    Delete All Sessions

Test Plus Endpoint
    [Documentation]    Test the /plus/:a/:b endpoint
    ${resp}=     GET    http://localhost:6000/is_prime/13219
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal    ${resp.text}    ${true}
    Delete All Sessions
