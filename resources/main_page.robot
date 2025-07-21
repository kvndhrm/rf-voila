*** Settings ***
Library    Browser

*** Keywords ***
Voila Web is open
    New Page    https://voila.id

I should be logged in
    Wait For Elements State    [data-test-id="CT_Component_profileMenu"]    visible
