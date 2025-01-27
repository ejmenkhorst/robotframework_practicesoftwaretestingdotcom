# robotframework-practicesoftwaretestingdotcom
Portfolio project showing what can be done with the Robot Framework 7 and Python version 3.12.  
 **Table of content:**
 - [Libraries](#libraries-used-in-this-project)
 - [Project setup](#project-setup)
 - [Development tools](#development-tools)
 - [Webdriver installation](#webdriver-installation)
 - [Running tests](#running-tests)
 
## Libraries used in this project
- [Browser Library](https://marketsquare.github.io/robotframework-browser/Browser.html) Robot Frameworks implementation of the Playwright library.

## Project setup

### Application Under Test
In this project we use the demo website [practicesoftwaretesting.com](https://practicesoftwaretesting.com).   

### Virtual environment
We use a virtual environment setup for this project to make sure that this project runs in complete isolation of all other python versions and packages you might have installed.

### Folder structure

#### Resources
This folder contains common used interactions and specific Page Objects for a proper locator strategy.

#### Results
The result folder contains the tests once they are done running

#### Tests
The test folder contains the actual tests which can be executed.

## Development tools
It can save a lot of time to use plugins that help you with autocompletion.

### Visual Studio Code
For VSCode it is recommended to use the plugin 'RobotCode - Language Support for Robot Framework in Visual Studio Code'  
You can add to the **settings.json** file the following line: **robot.python.executable** ***${workspaceFolder}\venv\bin\python3.12***

### PyCharm
For PyCharm it is recommended to use the plugin 'Hyper RobotFramework Support'.

## Webdriver installation
To install all browsers automatically via PlayWright follow the official [installation instructions](https://docs.robotframework.org/docs/different_libraries/browser#installation-instructions)   

## Running tests
To run tests you can run commands via the terminal to execute a specific range of tests.

### Run the whole testsuite
```robot -d results tests```