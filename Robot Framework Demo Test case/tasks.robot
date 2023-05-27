*** Settings ***
Documentation       Template robot main suite.

Library             RPA.Browser.Selenium


*** Test Cases ***
Test Login
    [Documentation]    Testing the login form with correct credentials
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robot-framework-tutorial/
    Input Text    id:email    robot@example.com
    Input Text    id:password    password
    Submit Form
    Element Text Should Be    id:main    Welcome to the restricted area

Test Login Failed
    [Documentation]    Testing the login form with incorrect credentials
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robot-framework-tutorial/
    Input Text    id:email    robot@example.com
    Input Text    id:password    drowssap
    Submit Form
    Element Text Should Be    id:main    The credentials you provided are not correct
