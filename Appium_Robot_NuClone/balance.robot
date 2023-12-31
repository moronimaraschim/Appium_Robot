***Settings***
Library     AppiumLibrary

***Test Cases***
Show My Balance
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=sdk_gphone_x86
    ...                 app=${EXECDIR}/app/nuclone.apk
    ...                 udid=emulator-5554

    Wait Until Element Is Visible   accessibility_id=card-hero      10

    Click Element       accessibility_id=show-balance

    Wait Until Element Is Visible   accessibility_id=user-balance   10
    Element Text Should Be          accessibility_id=user-balance   R$ 5.500,00

    Capture Page Screenshot
    Close Application