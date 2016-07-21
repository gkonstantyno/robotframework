*** Settings ***
Suite Setup       Run Tests    ${EMPTY}    standard_libraries/string/should_be.robot
Resource          atest_resource.robot

*** Test Cases ***
Should Be String Positive
    Check Test Case    ${TESTNAME}

Should Be String Negative
    Check Test Case    ${TESTNAME}

Bytes are strings in Python 2
    [Tags]    no-py3    no-ipy
    Check Test Case    ${TESTNAME}

Bytes are not strings in Python 3
    [Tags]    no-py2
    Check Test Case    Bytes are not strings in Python 3 and IronPython

Bytes are not strings in IronPython
    [Tags]    require-ipy
    Check Test Case    Bytes are not strings in Python 3 and IronPython

Should Not Be String Positive
    Check Test Case    ${TESTNAME}

Should Not Be String Negative
    Check Test Case    ${TESTNAME}

Should Be Unicode String Positive
    Check Test Case    ${TESTNAME}

Should Be Unicode String Negative
    [Tags]    no-ipy
    Check Test Case    ${TESTNAME}

Should Be Byte String Positive
    Check Test Case    ${TESTNAME}

Should Be Byte String Negative
    [Tags]    no-ipy
    Check Test Case    ${TESTNAME}

Should Be Lowercase Positive
    Check Test Case    ${TESTNAME}

Should Be Lowercase Negative
    Check Test Case    ${TESTNAME}

Should Be Uppercase Positive
    Check Test Case    ${TESTNAME}

Should Be Uppercase Negative
    Check Test Case    ${TESTNAME}

Should Be Titlecase Positive
    Check Test Case    ${TESTNAME}

Should Be Titlecase Negative
    Check Test Case    ${TESTNAME}

