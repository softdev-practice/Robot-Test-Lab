*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
test_x_is_1
    [Documentation]    test_x_is_1
    ${resp}=     GET    http://localhost:3000/iseven/1
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal     ${resp.text}    false
    Delete All Sessions

test_x_is_0
    [Documentation]    test_x_is_0
    ${resp}=     GET    http://localhost:3000/iseven/0
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal     ${resp.text}    true
    Delete All Sessions

test_x_is_neg2
    [Documentation]    test_x_is_neg2
    ${resp}=     GET    http://localhost:3000/iseven/-2
    Should Be Equal     ${resp.status_code}    ${200}
    Should Be Equal    ${resp.text}    true
    Delete All Sessions
