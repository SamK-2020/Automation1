*** Setting ***
Library  RequestsLibrary

*** Variables ***
${url}  https://jsonplaceholder.typicode.com
${val}  /todos/1/

*** Test Cases ***
Run Case1
    create session  session1  ${url}
    ${resp}=  get request  session1  ${val}
    #log to console  ${resp.status_code}
    #log to console  ${resp.content}
    #log to console  ${resp.headers}
    ${resp.status_code}=  convert to string  ${resp.status_code}
    should be equal  ${resp.status_code}  200
    ${body}=  convert to string  ${resp.content}
    should contain  ${resp.content}  0