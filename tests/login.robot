*** Settings ***
Resource    ../resources/general.robot
Resource    ../resources/auth_page.robot
Resource    ../resources/main_page.robot
Suite Setup    New Browser    browser=${BROWSER}    headless=${HEADLESS}
Test Setup    New Context    viewport={'width': 1920, 'height': 1080}
Test Teardown    Close Context
Suite Teardown    Close Browser

*** Test Cases ***
Login to voila website
    Given Voila Web is open
    When I click sign in button 
        And I input email ${EMAIL}
        And I input password ${PASSWORD}
        And I click submit button
    Then I should be logged in
