# robotframework-practicesoftwaretestingdotcom
Portfolio project showing what can be done with the Robot Framework 7 and Python version 3.12.

- [Test automation strategy](./testautomation-strategy.md)
- Latest status implemented [testcases](./functional-ui-testcases.md)  


 **Table of content:**
 - [Libraries](#libraries-used-in-this-project)
 - [Project setup](#project-setup)
 - [Development tools](#development-tools)
 - [Webdriver installation](#webdriver-installation)
 - [Running tests](#running-tests-locally)
 
## Libraries used in this project
- [Browser Library](https://marketsquare.github.io/robotframework-browser/Browser.html) Robot Frameworks implementation of the Playwright library.
- [Robot Framework Requests](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html) Robots framework implementation of the famous Python Requests Library

### Look for packages to update
To support an easy overview of packages and their latest state we make use of ***pip-check***.
``` bash
pip-check
```
This will give you a table like overview of the packages current state versus the defined state in your requirements.txt file.

## Project setup

### Software Under Test
In this project we use the demo website [practicesoftwaretesting.com](https://practicesoftwaretesting.com).  
To speed up the UI tests we also make use of the provided [Toolshop REST API](https://api.practicesoftwaretesting.com/api/documentation#/)

### Virtual environment
We use a virtual environment setup for this project to make sure that this project runs in complete isolation of all other python versions and packages you might have installed.  

#### Initialisation of the project
1. Select Python interpreter a VENV is recommended
2. Install all dependencies and browsers
   - ```sudo apt install python3-pip```
   - ```pip install -r requirements.txt```
   - ```rfbrowser init```  

### Folder structure

#### Config
This folder contains a [configuration file](./config/pyproject.toml) for the [Robotidy](#robotidy-) plugin.

#### Resources
This folder contains common used interactions and specific Page Objects for a proper locator strategy.

#### Results
The result folder contains the test results in different formats once they are done running.

#### Tests
The test folder contains the actual tests which can be executed.

## Development tools
It can save a lot of time to use plugins that help you with autocompletion.

### Visual Studio Code
For VSCode it is recommended to use the plugin 'RobotCode - Language Support for Robot Framework in Visual Studio Code'  
You can add to the **settings.json** file the following line: **robot.python.executable** ***${workspaceFolder}\venv\bin\python3.12***

### PyCharm
For PyCharm it is recommended to use the plugin 'Hyper RobotFramework Support'.

### Coding style
To maintain consistency in the codebase we use 2 plugins:
- [Robotidy](https://robotidy.readthedocs.io/en/stable/index.html) is a tool for autoformatting Robot Framework code.
- [Robocop](https://robocop.readthedocs.io/en/stable/) is a tool that performs static code analysis of Robot Framework code.

#### Robotidy  
According to the changes you applied you can run robotidy with a path as parameter:  
```robotidy tests```  
```robotidy resources```  

#### Robocop
The Robocop plugin is also automatically run via a Github Action when creating a pull request and will give feedback.  
```robocop ```

## Webdriver installation
To install all browsers automatically via PlayWright follow the official [installation instructions](https://docs.robotframework.org/docs/different_libraries/browser#installation-instructions)   

## Running tests locally
To run tests you can run commands via the terminal to execute a specific range of tests.  
Please make sure you run ```rfbrowser init``` to install the browsers before running a test.
### Run the whole testsuite
```robot -d results tests```

### Run a specific testsuite  
Settings for each testsuite are loaded from __init__.robot within each specific directory.
```bash 
robot -d results tests/login/
```  
```bash 
robot -d results tests/checkout/
```  
```bash 
robot -d results tests/contactform/
```

### Run a specific browser for the all test suites

#### Chromium
```robot -v browser:chromium -d results tests```  
#### Firefox
```robot -v browser:firefox -d results tests```
