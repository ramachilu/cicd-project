# cicd-project

## Continuous Integration

  1. Enable GitHub Actions within the project you want to setup Continuous Integration
  2. Update the workflow setup YAML file according to the needs and commit to the project.
  3. Above step triggers automatic build process according to the instruction from the YAML file.
  4. Project lint and test pass status and detailed screenshots as follows.

Status Screenshot:

![Git_CI_status_screenshot](https://user-images.githubusercontent.com/76182381/102951771-9f68d780-449b-11eb-8727-cb36d178e890.png)

Details Screenshot:

![Git_gui_test_pass_screenshot](https://user-images.githubusercontent.com/76182381/102951364-b3600980-449a-11eb-9691-4f0f695219b2.png)


# Overview

<TODO: complete this with an overview of your project>

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>

