@echo off

rem Set values for your Language Understanding app
set app_id=128b772e-7605-4671-bfa6-e1a130073045
set endpoint=https://nakkivrslanguageunderstanding.cognitiveservices.azure.com/
set key=4e139adf4ae14248ace83b7ece3e84ae

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"