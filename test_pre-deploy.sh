#!/bin/bash

app_status=`kubectl get pods --namespace=pre-prod | grep my-app | awk '{print $3}'`

        if [ "$app_status" == "Running" ]
        then
        echo "Status deployment is $app_status"
        else
        echo "Deployment in pre-prod namespace was failed"
        exit 1
        fi


