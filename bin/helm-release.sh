

#!/bin/bash

# Set variables
CHART_PATH=$1
CHART_RELEASE_FOLDER=charts
CHART_RELEASE_URL=https://flowified.github.io/package-helm-charts/charts/

helm package $CHART_PATH
mv *.tgz $CHART_RELEASE_FOLDER
helm repo index $CHART_RELEASE_FOLDER --url $CHART_RELEASE_URL