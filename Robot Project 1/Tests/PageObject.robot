*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Resource  ../KeywordDefinitionFiles/LoginPage.robot
Resource  ../KeywordDefinitionFiles/HomePage.robot
Resource  ../KeywordDefinitionFiles/Common.robot

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that the user is able to successfully Login then Logout to OrangeHRM using Page Object
    [tags]  Smoke
    Opening Browser  ${site_url}  ${browser}
    Input Username
    Input Password
    Click Login
    Verify Welcome Text is Visible
    Logout
    Close Browser

*** Keywords ***