*** Settings ***
Library    Browser

*** Keywords ***

I click sign in button
    # Handle potential popup/modal that might appear
    TRY
        Wait For Elements State    button#moe-dontallow_button    visible    timeout=3s
        Click    button#moe-dontallow_button
        Wait For Elements State    button#moe-dontallow_button    hidden
    EXCEPT
        Log    No popup button found, continuing...
    END
    Press Keys    body    Escape
    Click    [data-test-id="CT-SignIn-Btn"]

I input email ${EMAIL}
    Fill Text    [data-test-id="CT_component_login_input"]    ${EMAIL}

I input password ${PASSWORD}
    Fill Text    [data-test-id="CT_component_password_input"]    ${PASSWORD}

I click submit button
    Click    [data-test-id="CT_component_login_submit"]