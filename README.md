# Overview

Simple Flask Machine Learning application to demonstrate Continuous Integration (CI) and Continuous Delivery (CD).

In this project we have used GitHub Actions to demonstrate CI and for CD, we have used Azure pipelines.

## Project Plan

Project plan be accessed via below provided Trello board and Excel spreadsheet links.

* Trello board for the project can be found [here](https://trello.com/b/uw12MCZA/ci-cd-project-board)
* Project plan spreadsheet can be found [here](https://docs.google.com/spreadsheets/d/1W77rjeQvvhYIlLO8SiMH0nnejKKMbAHbGltJRRJnQKA/edit#gid=1348135932)

## Instructions

Agile Project Management architecture diagram,

![Agile_Prj_Mgt](https://user-images.githubusercontent.com/76182381/103105108-94c45480-45f9-11eb-8b35-79875b385959.png)

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


### Instructions for running the Python project.

1. Clone this GitHub repository to your GitHub account.
2. Login to Azure portal and start Cloud Shell.
3. git clone the repo from Cloud Shell. Please refer to the screenshot below.
4. Start a webapp with unique appservice name.
5. Once app is up, run './make_predict_azure_app.sh' script to make predictions and check log entries for predicted values.

* Project cloned into Azure Cloud Shell

![Project-clone-at-cloud-shell](https://user-images.githubusercontent.com/76182381/103097687-0f7b7880-45d6-11eb-88a2-4c918ef85f85.png)

* Project running on Azure App Service

![App-deploy-via-Cloud-Shell](https://user-images.githubusercontent.com/76182381/103097700-1bffd100-45d6-11eb-8d6b-940882c83cf7.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`

![lint-pass](https://user-images.githubusercontent.com/76182381/103097904-dc85b480-45d6-11eb-9ae1-cb71cbeae798.png)

![make_all_test_pass](https://user-images.githubusercontent.com/76182381/103112060-c7ce0e80-4620-11eb-89f7-97b2a11653eb.png)

* Output of a test run

![Accessing_app_from_browser](https://user-images.githubusercontent.com/76182381/103112083-f815ad00-4620-11eb-8fd6-120cb87ebb75.png)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

![Azure-pipeline](https://user-images.githubusercontent.com/76182381/103098681-a990f000-45d9-11eb-9d6b-1799f6af7cb4.png)

![Azure-pipeline-deployments](https://user-images.githubusercontent.com/76182381/103100207-8a955c80-45df-11eb-9349-9aa7742da090.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/ramachilu/cicd-project/blob/main/make_predict_azure_app.sh).

The output should look similar to this:

![local_prediction](https://user-images.githubusercontent.com/76182381/103112100-0cf24080-4621-11eb-96b3-31adcba09898.png)

![Make-prediction-test](https://user-images.githubusercontent.com/76182381/103097950-0f2fad00-45d7-11eb-8ec7-d0834d760c28.png)


```bash
rama@Azure:~/cicd-project$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

![log-messages-from-cloud-shell](https://user-images.githubusercontent.com/76182381/103100145-5621a080-45df-11eb-96bc-de4cdde9a6f4.png)

* Locust load test

![locust_results](https://user-images.githubusercontent.com/76182381/103112124-3a3eee80-4621-11eb-9484-0c97e72cc0ef.png)


## Enhancements

This project can be improved by adding feature to have GET methods to access the app from browser.
Show predictions and trends in graphical presentation.

## Demo 

https://youtu.be/PonRCMi4ewk

![Python application test with Github Actions](https://github.com/ramachilu/cicd-project/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg)
