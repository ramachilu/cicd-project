# Overview

Simple Flask Machine Learning application to demonstrate Continuous Integration (CI) and Continuous Delivery (CD).

In this project we have used GitHub Actions to demonstrate CI and for CD, we have have used Azure pipelines.

## Project Plan

Project plan be accessed via below provied Trello board and Excel spreadsheet links.

* Trello board for the project can be found [here](https://trello.com/b/uw12MCZA/ci-cd-project-board)
* Project plan spreadsheet can be found [here](https://docs.google.com/spreadsheets/d/1W77rjeQvvhYIlLO8SiMH0nnejKKMbAHbGltJRRJnQKA/edit#gid=1348135932)

## Instructions

## Continuous Integration

* Architectural Diagram 

![CI-Architecture](https://user-images.githubusercontent.com/76182381/103097268-c37c0400-45d4-11eb-8127-f6b24c89f1ab.png)

  1. Enable GitHub Actions within the project you want to setup Continuous Integration
  2. Update the workflow setup YAML file according to the needs and commit to the project.
  3. Above step triggers automatic build process according to the instruction from the YAML file.
  4. Project lint and test pass status and detailed screenshots as follows.

Status Screenshot:

![Git_CI_status_screenshot](https://user-images.githubusercontent.com/76182381/102951771-9f68d780-449b-11eb-8727-cb36d178e890.png)

Details Screenshot:

![Git_gui_test_pass_screenshot](https://user-images.githubusercontent.com/76182381/102951364-b3600980-449a-11eb-9691-4f0f695219b2.png)

## Continuous Delivery

* Architectural Diagram:

![CD-Architecture](https://user-images.githubusercontent.com/76182381/103097352-f6be9300-45d4-11eb-9fea-72045aef3f7d.png)


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project cloned into Azure Cloud Shell

![Project-clone-at-cloud-shell](https://user-images.githubusercontent.com/76182381/103097687-0f7b7880-45d6-11eb-88a2-4c918ef85f85.png)

* Project running on Azure App Service

![App-deploy-via-Cloud-Shell](https://user-images.githubusercontent.com/76182381/103097700-1bffd100-45d6-11eb-8d6b-940882c83cf7.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`

![lint-pass](https://user-images.githubusercontent.com/76182381/103097904-dc85b480-45d6-11eb-9ae1-cb71cbeae798.png)

* Output of a test run

![Make-prediction-test](https://user-images.githubusercontent.com/76182381/103097950-0f2fad00-45d7-11eb-8ec7-d0834d760c28.png)


* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

![Azure-pipeline](https://user-images.githubusercontent.com/76182381/103098681-a990f000-45d9-11eb-9d6b-1799f6af7cb4.png)

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

