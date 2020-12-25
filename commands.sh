#!/usr/bin/env bash

# Command to clone GitHub repo to Azure Cloud Shell account
$ git clone git@github.com:ramachilu/cicd-project.git

# Command to start webapp on Azure Cloud Shell
$ az webapp up -n cicd-project-flask

# Command to tail log files at Azure Cloud Shell
$ az webapp log tail

# Update [make_predict_azure_app.sh](https://github.com/ramachilu/cicd-project/blob/main/make_predict_azure_app.sh) script to have correct URL
$ vim make_predict_azure_app.sh
$ tail -3 make_predict_azure_app.sh
     -X POST https://cicd-project-flask.azurewebsites.net:$PORT/predict
     #-X POST https://<yourappname>.azurewebsites.net:$PORT/predict
     #your application name <yourappname>goes here

# Run below script to post prediction to the webapp deployed at Azure App Services
$ ./make_predict_azure_app.sh

# Run below script to post prediction to local app
$ ./make_prediction.sh
