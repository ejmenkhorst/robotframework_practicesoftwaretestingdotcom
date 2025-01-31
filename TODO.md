# TO DO LIST OF IMPROVEMENTS
There is a lot of fun things to implement in the near future !  
For some inspiration you might want to implement the suggestions below:

### tests/login.robot

#### Scenario: User should fill out all mandatory fields to login
``` 
Given I'm a logged-out user and on the login page  
When I just hit the Login button  
A Warning Is Displayed    email and password are mandatory
```

#### Scenario: User should fill email in correct format to be able to login
```
Given I'm a logged-out user and on the login page  
When I fill in an email in the wrong format  
A Warning Is Displayed    email-address is written in the wrong format
```